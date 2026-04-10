package com.ccv.pda

import android.animation.ObjectAnimator
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.ImageDecoder
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.MediaStore
import android.view.View
import android.view.animation.LinearInterpolator
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import com.google.zxing.BarcodeFormat
import com.google.zxing.BinaryBitmap
import com.google.zxing.DecodeHintType
import com.google.zxing.MultiFormatReader
import com.google.zxing.RGBLuminanceSource
import com.google.zxing.ResultPoint
import com.google.zxing.common.HybridBinarizer
import com.journeyapps.barcodescanner.BarcodeCallback
import com.journeyapps.barcodescanner.BarcodeResult
import com.journeyapps.barcodescanner.BarcodeView
import com.journeyapps.barcodescanner.DefaultDecoderFactory

class ScanPayActivity : AppCompatActivity() {

    private lateinit var barcodeView: BarcodeView
    private lateinit var backView: ImageView
    private lateinit var flashLayout: LinearLayout
    private lateinit var albumLayout: LinearLayout
    private lateinit var flashIconView: ImageView
    private lateinit var flashTextView: TextView
    private lateinit var scanFrameView: View
    private lateinit var scanLineView: View

    private var scanAnimator: ObjectAnimator? = null
    private var isFlashOn = false
    private var hasHandledResult = false
    private var hasCameraPermission = false

    private val requestCameraPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { granted ->
        hasCameraPermission = granted
        if (granted) {
            startCameraPreview()
        } else {
            toast(getString(R.string.scan_pay_camera_denied))
            finish()
        }
    }

    private val pickImageLauncher = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri ->
        if (uri == null) {
            resumeScanning()
            return@registerForActivityResult
        }
        decodeFromAlbum(uri)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.statusBarColor = Color.BLACK
        window.navigationBarColor = Color.BLACK
        setContentView(R.layout.activity_scan_pay)
        bindViews()
        initBarcodeView()
        initListeners()
        startScanAnimationWhenReady()
        requestCameraPermissionIfNeeded()
    }

    private fun bindViews() {
        barcodeView = findViewById(R.id.asp_barcode_view)
        backView = findViewById(R.id.asp_iv_back)
        flashLayout = findViewById(R.id.asp_ll_flash)
        albumLayout = findViewById(R.id.asp_ll_album)
        flashIconView = findViewById(R.id.asp_iv_flash)
        flashTextView = findViewById(R.id.asp_tv_flash)
        scanFrameView = findViewById(R.id.asp_fl_scan_frame)
        scanLineView = findViewById(R.id.asp_iv_scan_line)
    }

    private fun initBarcodeView() {
        barcodeView.decoderFactory = DefaultDecoderFactory(
            listOf(
                BarcodeFormat.QR_CODE,
                BarcodeFormat.CODE_128,
                BarcodeFormat.CODE_39,
                BarcodeFormat.EAN_13,
                BarcodeFormat.EAN_8,
                BarcodeFormat.UPC_A,
                BarcodeFormat.UPC_E
            )
        )
        barcodeView.decodeContinuous(object : BarcodeCallback {
            override fun barcodeResult(result: BarcodeResult?) {
                val text = result?.text.orEmpty()
                if (text.isBlank() || hasHandledResult) {
                    return
                }
                handleScanSuccess(text)
            }

            override fun possibleResultPoints(resultPoints: MutableList<ResultPoint>?) = Unit
        })
    }

    private fun initListeners() {
        backView.setOnClickListener { finish() }
        flashLayout.setOnClickListener { toggleFlashState() }
        albumLayout.setOnClickListener {
            pauseScanning()
            pickImageLauncher.launch("image/*")
        }
    }

    private fun requestCameraPermissionIfNeeded() {
        when {
            checkSelfPermission(android.Manifest.permission.CAMERA) == android.content.pm.PackageManager.PERMISSION_GRANTED -> {
                hasCameraPermission = true
                startCameraPreview()
            }

            else -> requestCameraPermissionLauncher.launch(android.Manifest.permission.CAMERA)
        }
    }

    private fun startCameraPreview() {
        hasHandledResult = false
        barcodeView.resume()
    }

    private fun pauseScanning() {
        barcodeView.pause()
    }

    private fun resumeScanning() {
        if (!hasHandledResult && hasCameraPermission) {
            barcodeView.resume()
        }
    }

    private fun startScanAnimationWhenReady() {
        scanFrameView.post {
            val travelDistance = (scanFrameView.height - scanLineView.height).coerceAtLeast(0)
            if (travelDistance <= 0) {
                return@post
            }
            scanAnimator?.cancel()
            scanAnimator = ObjectAnimator.ofFloat(
                scanLineView,
                View.TRANSLATION_Y,
                0f,
                travelDistance.toFloat()
            ).apply {
                duration = 1800L
                repeatCount = ObjectAnimator.INFINITE
                interpolator = LinearInterpolator()
                start()
            }
        }
    }

    private fun toggleFlashState() {
        if (!hasCameraPermission) {
            toast(getString(R.string.scan_pay_need_camera_permission))
            return
        }
        isFlashOn = !isFlashOn
        if (isFlashOn) {
            barcodeView.setTorch(true)
        } else {
            barcodeView.setTorch(false)
        }
        flashIconView.alpha = if (isFlashOn) 1f else 0.75f
        flashTextView.text = getString(
            if (isFlashOn) R.string.scan_pay_close_flash else R.string.scan_pay_open_flash
        )
        toast(
            getString(
                if (isFlashOn) R.string.scan_pay_flash_on else R.string.scan_pay_flash_off
            )
        )
    }

    private fun decodeFromAlbum(uri: Uri) {
        val bitmap = try {
            loadBitmapFromUri(uri)
        } catch (_: Throwable) {
            null
        }
        if (bitmap == null) {
            toast(getString(R.string.scan_pay_decode_failed))
            resumeScanning()
            return
        }
        val code = decodeBitmap(bitmap)
        if (code.isNullOrBlank()) {
            toast(getString(R.string.scan_pay_decode_failed))
            resumeScanning()
            return
        }
        handleScanSuccess(code)
    }

    private fun loadBitmapFromUri(uri: Uri): Bitmap {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            ImageDecoder.decodeBitmap(ImageDecoder.createSource(contentResolver, uri))
        } else {
            @Suppress("DEPRECATION")
            MediaStore.Images.Media.getBitmap(contentResolver, uri)
        }
    }

    private fun decodeBitmap(bitmap: Bitmap): String? {
        val width = bitmap.width
        val height = bitmap.height
        val pixels = IntArray(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)
        val source = RGBLuminanceSource(width, height, pixels)
        val binaryBitmap = BinaryBitmap(HybridBinarizer(source))
        val hints = hashMapOf<DecodeHintType, Any>(
            DecodeHintType.TRY_HARDER to true,
            DecodeHintType.POSSIBLE_FORMATS to listOf(
                BarcodeFormat.QR_CODE,
                BarcodeFormat.CODE_128,
                BarcodeFormat.CODE_39,
                BarcodeFormat.EAN_13,
                BarcodeFormat.EAN_8,
                BarcodeFormat.UPC_A,
                BarcodeFormat.UPC_E
            )
        )
        return try {
            MultiFormatReader().decode(binaryBitmap, hints)?.text
        } catch (_: Throwable) {
            null
        }
    }

    private fun handleScanSuccess(code: String) {
        if (hasHandledResult) {
            return
        }
        hasHandledResult = true
        barcodeView.pause()
        setResult(
            RESULT_OK,
            Intent().putExtra(EXTRA_SCAN_RESULT, code)
        )
        finish()
    }

    private fun toast(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    override fun onResume() {
        super.onResume()
        resumeScanning()
    }

    override fun onPause() {
        pauseScanning()
        super.onPause()
    }

    override fun onDestroy() {
        if (isFlashOn) {
            barcodeView.setTorch(false)
        }
        scanAnimator?.cancel()
        scanAnimator = null
        barcodeView.pauseAndWait()
        super.onDestroy()
    }

    companion object {
        private const val EXTRA_SCAN_RESULT = "scan_result"

        fun createIntent(activity: AppCompatActivity): Intent {
            return Intent(activity, ScanPayActivity::class.java)
        }

        fun readScanResult(intent: Intent?): String {
            return intent?.getStringExtra(EXTRA_SCAN_RESULT).orEmpty()
        }
    }
}
