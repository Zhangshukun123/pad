.class public Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "OnlinePayActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;"
    }
.end annotation


# static fields
.field public static final KEY_GOODS_COUNT:Ljava/lang/String; = "goodsCount"

.field public static final KEY_PAY_JSON:Ljava/lang/String; = "payJson"

.field public static final KEY_PAY_MODE:Ljava/lang/String; = "payMode"

.field public static final KEY_PAY_MONEY:Ljava/lang/String; = "payMoney"

.field public static final KEY_PAY_SALE_TYPE:Ljava/lang/String; = "saleType"

.field public static final KEY_PAY_TO_ONLINE_TYPE:Ljava/lang/String; = "toOnlineType"

.field public static final PAY_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final PAY_MODE_TO_ONLINE:Ljava/lang/String; = "toOnline"

.field public static final PAY_TO_ONLINE_CASH:Ljava/lang/String; = "1"

.field public static final PAY_TO_ONLINE_LOST_SCRAPPED:Ljava/lang/String; = "2"

.field public static final takePhoto:I = 0x1


# instance fields
.field btnPay:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private camera_path:Ljava/lang/String;

.field private camera_photo_name:Ljava/lang/String;

.field clPayList:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d1
    .end annotation
.end field

.field etPayCode:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d3
    .end annotation
.end field

.field private imageuri:Landroid/net/Uri;

.field private isPaying:Z

.field private jdPayQrCodePopup:Landroid/widget/PopupWindow;

.field llCode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080570
    .end annotation
.end field

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private payWay:Ljava/lang/String;

.field rbAliPay:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d5
    .end annotation
.end field

.field rbJD:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d6
    .end annotation
.end field

.field rbUnionPay:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d7
    .end annotation
.end field

.field rbWechatPay:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d8
    .end annotation
.end field

.field rgPayWay:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800d9
    .end annotation
.end field

.field rvGoods:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800da
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field tvPayErrorInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800db
    .end annotation
.end field

.field tvPayMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800dc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isPaying:Z

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->camera_path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->payWay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payMode"

    .line 138
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payJson"

    .line 139
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payMoney"

    .line 140
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "saleType"

    .line 141
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected backClick(Landroid/view/View;)Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isPaying:Z

    if-eqz v0, :cond_0

    const-string p1, "\u6b63\u5728\u652f\u4ed8\u4e2d\uff0c\u8bf7\u52ff\u9000\u51fa"

    .line 338
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showTipsOnTop(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->finishActivity()V

    .line 342
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->backClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public dealScanResult(Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isPaying:Z

    if-eqz v0, :cond_1

    const-string p1, "\u6b63\u5728\u652f\u4ed8\u4e2d\uff0c\u8bf7\u52ff\u8fdb\u884c\u5176\u4ed6\u64cd\u4f5c"

    .line 260
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    return-void
.end method

.method public decodeFromPhoto(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 11

    if-eqz p1, :cond_3

    .line 438
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 439
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x64

    .line 440
    invoke-static {p1, v1}, Lcom/ayma/commonerp/util/BitmapByte;->bitmapByte(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 441
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 443
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 445
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 446
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 448
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    int-to-float p1, p1

    .line 450
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v8, v0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 451
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    move-object v4, v3

    .line 453
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    const v0, 0x32000

    if-le p1, v0, :cond_1

    .line 454
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const p1, 0x3f19999a    # 0.6f

    .line 455
    invoke-virtual {v9, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 456
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 459
    :cond_1
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 462
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 464
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 465
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 468
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 469
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v3, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    .line 475
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 476
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v2, Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 481
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v5}, Ljava/util/Vector;-><init>(I)V

    .line 483
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 488
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 490
    :cond_2
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {p1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 498
    :try_start_0
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    new-instance v2, Lcom/vondear/rxfeature/module/scaner/BitmapLuminanceSource;

    invoke-direct {v2, v4}, Lcom/vondear/rxfeature/module/scaner/BitmapLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0024

    return v0
.end method

.method public hideJDPayQrCode()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public hidePayLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isLoading:Z

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rgPayWay:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;
    .locals 2

    .line 332
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$showJDPayQrCode$0$OnlinePayActivity(Landroid/view/View;)V
    .locals 7

    .line 585
    new-instance v6, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$5;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    const-string v1, ""

    const-string v2, "\u662f\u5426\u8981\u5173\u95ed\u5f53\u524d\u652f\u4ed8\u4e8c\u7ef4\u7801\u9875\u9762\uff1f\n\u6ce8\u610f\uff1a\u5173\u95ed\u540e\u65e0\u6cd5\u6062\u590d"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->hideLoading()V

    if-eq p2, v0, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 404
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 410
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showScanCode(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    if-eq p2, v0, :cond_3

    const-string p1, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    .line 416
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 420
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->imageuri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->decodeFromPhoto(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 423
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u56fe\u7247\u8bc6\u522b\u5931\u8d25"

    .line 425
    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isPaying:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u652f\u4ed8\u4e2d\uff0c\u8bf7\u52ff\u9000\u51fa"

    .line 509
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 512
    :cond_0
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnPayClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u652f\u4ed8\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 393
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->payWay:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->pay(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->onCreate(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->checkDevice()V

    .line 160
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->registerReceiver()V

    .line 161
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 212
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    .line 213
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->unregisterReceiver()V

    return-void
.end method

.method public onIvScanClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800d4
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 353
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 354
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 355
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 357
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 520
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ayma/commonerp/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongIvScanClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnLongClick;
        value = {
            0x7f0800d4
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 366
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 373
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 374
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    const-string v3, "com.ayma.commonerp.fileprovider"

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->imageuri:Landroid/net/Uri;

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->imageuri:Landroid/net/Uri;

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->imageuri:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, p1, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 279
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p4, :cond_3

    .line 282
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p3, "\u53d6\u6d88"

    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-eqz p6, :cond_5

    .line 285
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p5, "\u786e\u5b9a"

    :cond_4
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    const/4 p1, 0x0

    .line 287
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 289
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_6

    .line 290
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 291
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_6
    return-void
.end method

.method public showGoods(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->clPayList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->clPayList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 624
    new-instance v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 625
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 626
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public showInvoicingQrCode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 565
    invoke-static {p0, p1, v0, v0}, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil;->showInvoicingQrCode(Lcom/ayma/commonerp/base/BaseActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public showJDPayQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 578
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v1, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 583
    invoke-static {p2, v1, v1}, Lcom/vondear/rxfeature/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;

    move-result-object p2

    const v1, 0x7f0805f4

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/-$$Lambda$OnlinePayActivity$3BoWcFy4TvnFOzDGk5lIBee_4uo;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/onlinepay/-$$Lambda$OnlinePayActivity$3BoWcFy4TvnFOzDGk5lIBee_4uo;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0805f5

    .line 595
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0805f6

    .line 596
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 597
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 598
    new-instance p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 605
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 606
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->jdPayQrCodePopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showPayErrorInfo(Ljava/lang/String;)V
    .locals 1

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    new-instance v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)V

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f1102eb

    .line 187
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const/4 p2, 0x1

    .line 190
    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isLoading:Z

    .line 191
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 195
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showPayMoney(DLjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    .line 532
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayMoney:Landroid/widget/TextView;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p3, p2, v1

    const-string p3, "\u652f\u4ed8\u91d1\u989d\uff08\u5143\uff09\uff1a%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->tvPayMoney:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p3, v3, v0

    const-string p1, "\u5171%s\u4ef6\u5546\u54c1\uff0c\u5408\u8ba1\u91d1\u989d\uff1a%s\u5143"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showPayWay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showScanCode(Ljava/lang/String;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->etPayCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->destroy()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    :cond_0
    return-void
.end method

.method public updatePayingStatue(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->isPaying:Z

    return-void
.end method
