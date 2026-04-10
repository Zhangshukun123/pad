.class public Lcom/yzq/zxinglibrary/android/CaptureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private albumLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private backIv:Landroidx/appcompat/widget/AppCompatImageView;

.field private beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

.field private bottomLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

.field public config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

.field private flashLightIv:Landroidx/appcompat/widget/AppCompatImageView;

.field private flashLightLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private flashLightTv:Landroid/widget/TextView;

.field private handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

.field private previewView:Landroid/view/SurfaceView;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 86
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u626b\u4e00\u626b"

    .line 275
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    sget v1, Lcom/yzq/zxinglibrary/R$string;->msg_camera_framework_bug:I

    invoke-virtual {p0, v1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 277
    sget v1, Lcom/yzq/zxinglibrary/R$string;->button_ok:I

    new-instance v2, Lcom/yzq/zxinglibrary/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/yzq/zxinglibrary/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v1, Lcom/yzq/zxinglibrary/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/yzq/zxinglibrary/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 284
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/yzq/zxinglibrary/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x0

    .line 259
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 261
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 262
    new-instance p1, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-direct {p1, p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;-><init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;Lcom/yzq/zxinglibrary/camera/CameraManager;)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 265
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initView()V
    .locals 2

    .line 130
    sget v0, Lcom/yzq/zxinglibrary/R$id;->preview_view:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->previewView:Landroid/view/SurfaceView;

    .line 131
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/yzq/zxinglibrary/R$id;->viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    .line 134
    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v0, v1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->setZxingConfig(Lcom/yzq/zxinglibrary/bean/ZxingConfig;)V

    .line 137
    sget v0, Lcom/yzq/zxinglibrary/R$id;->backIv:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->backIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 138
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/yzq/zxinglibrary/R$id;->flashLightIv:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 141
    sget v0, Lcom/yzq/zxinglibrary/R$id;->flashLightTv:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightTv:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/yzq/zxinglibrary/R$id;->flashLightLayout:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 144
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/yzq/zxinglibrary/R$id;->albumLayout:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->albumLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 146
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/yzq/zxinglibrary/R$id;->bottomLayout:I

    invoke-virtual {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->bottomLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 150
    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowbottomLayout()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->switchVisibility(Landroid/view/View;Z)V

    .line 151
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowFlashLight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->switchVisibility(Landroid/view/View;Z)V

    .line 152
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->albumLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowAlbum()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->switchVisibility(Landroid/view/View;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->isSupportCameraLedFlash(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static isSupportCameraLedFlash(Landroid/content/pm/PackageManager;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 173
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v4, "android.hardware.camera.flash"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private switchVisibility(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getCameraManager()Lcom/yzq/zxinglibrary/camera/CameraManager;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/yzq/zxinglibrary/view/ViewfinderView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->onActivity()V

    .line 205
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 207
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codedContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 390
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yzq/zxinglibrary/decode/ImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 393
    new-instance p2, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;

    new-instance p3, Lcom/yzq/zxinglibrary/android/CaptureActivity$1;

    invoke-direct {p3, p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity$1;-><init>(Lcom/yzq/zxinglibrary/android/CaptureActivity;)V

    invoke-direct {p2, p1, p3}, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;-><init>(Ljava/lang/String;Lcom/yzq/zxinglibrary/decode/DecodeImgCallback;)V

    .line 403
    invoke-virtual {p2}, Lcom/yzq/zxinglibrary/decode/DecodeImgThread;->run()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 368
    sget v0, Lcom/yzq/zxinglibrary/R$id;->flashLightLayout:I

    if-ne p1, v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->switchFlashLight(Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;)V

    goto :goto_0

    .line 371
    :cond_0
    sget v0, Lcom/yzq/zxinglibrary/R$id;->albumLayout:I

    if-ne p1, v0, :cond_1

    .line 373
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.PICK"

    .line 374
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xa

    .line 376
    invoke-virtual {p0, p1, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    :cond_1
    sget v0, Lcom/yzq/zxinglibrary/R$id;->backIv:I

    if-ne p1, v0, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x1000000

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "zxingConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "config"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    if-nez p1, :cond_1

    .line 109
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    .line 113
    :cond_1
    sget p1, Lcom/yzq/zxinglibrary/R$layout;->activity_capture:I

    invoke-virtual {p0, p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->setContentView(I)V

    .line 116
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->initView()V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    .line 120
    new-instance p1, Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-direct {p1, p0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

    .line 121
    new-instance p1, Lcom/yzq/zxinglibrary/android/BeepManager;

    invoke-direct {p1, p0}, Lcom/yzq/zxinglibrary/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

    .line 122
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isPlayBeep()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/android/BeepManager;->setPlayBeep(Z)V

    .line 123
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShake()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/android/BeepManager;->setVibrate(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->shutdown()V

    .line 311
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->stopAnimator()V

    .line 312
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "CaptureActivity"

    const-string v1, "onPause"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/BeepManager;->close()V

    .line 299
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->closeDriver()V

    .line 301
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 305
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 227
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 229
    new-instance v0, Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {v0, v1, v2}, Lcom/yzq/zxinglibrary/camera/CameraManager;-><init>(Landroid/content/Context;Lcom/yzq/zxinglibrary/bean/ZxingConfig;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    .line 231
    iget-object v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {v1, v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->setCameraManager(Lcom/yzq/zxinglibrary/camera/CameraManager;)V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->handler:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;

    .line 234
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 235
    iget-boolean v1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 237
    invoke-direct {p0, v0}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->beepManager:Lcom/yzq/zxinglibrary/android/BeepManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/BeepManager;->updatePrefs()V

    .line 244
    iget-object v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->inactivityTimer:Lcom/yzq/zxinglibrary/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/android/InactivityTimer;->onResume()V

    return-void
.end method

.method public setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 3

    .line 324
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 325
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 326
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 344
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, p2, :cond_4

    .line 345
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 346
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 348
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 350
    :goto_1
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    .line 319
    invoke-direct {p0, p1}, Lcom/yzq/zxinglibrary/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 355
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->hasSurface:Z

    return-void
.end method

.method public switchFlashImg(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightIv:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lcom/yzq/zxinglibrary/R$drawable;->ic_open:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 190
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightTv:Landroid/widget/TextView;

    sget v0, Lcom/yzq/zxinglibrary/R$string;->close_flash:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightIv:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lcom/yzq/zxinglibrary/R$drawable;->ic_close:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 193
    iget-object p1, p0, Lcom/yzq/zxinglibrary/android/CaptureActivity;->flashLightTv:Landroid/widget/TextView;

    sget v0, Lcom/yzq/zxinglibrary/R$string;->open_flash:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
