.class public final Lcom/yzq/zxinglibrary/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;


# instance fields
.field private autoFocusManager:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

.field private final configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/yzq/zxinglibrary/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yzq/zxinglibrary/bean/ZxingConfig;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedCameraId:I

    .line 69
    iput-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    .line 71
    new-instance p1, Lcom/yzq/zxinglibrary/camera/PreviewCallback;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-direct {p1, v0}, Lcom/yzq/zxinglibrary/camera/PreviewCallback;-><init>(Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewCallback:Lcom/yzq/zxinglibrary/camera/PreviewCallback;

    .line 72
    iput-object p2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    return-void
.end method

.method public static get()Lcom/yzq/zxinglibrary/camera/CameraManager;
    .locals 1

    .line 376
    sget-object v0, Lcom/yzq/zxinglibrary/camera/CameraManager;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 12

    .line 352
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    if-nez v1, :cond_1

    .line 360
    new-instance v1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    iput-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isFullScreenScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yzq/zxinglibrary/R$dimen;->toolBarHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 368
    new-instance v11, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v7, v2, v1

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v11
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 164
    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 165
    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    monitor-exit p0

    return-object v1

    .line 247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 250
    monitor-exit p0

    return-object v1

    .line 253
    :cond_1
    :try_start_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 260
    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 261
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    .line 263
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int/2addr v1, v0

    invoke-direct {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 265
    sget-object v0, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 282
    monitor-exit p0

    return-object v1

    .line 284
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 285
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 286
    iget-object v3, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 294
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 295
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 296
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 297
    iput-object v2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 299
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 98
    iget v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedCameraId:I

    if-ltz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/yzq/zxinglibrary/camera/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/yzq/zxinglibrary/camera/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 107
    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_1

    .line 105
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 111
    iget-boolean p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->initialized:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->initialized:Z

    .line 113
    iget-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 114
    iget p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez p1, :cond_3

    .line 115
    iget p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectWidth:I

    iget v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, p1, v1}, Lcom/yzq/zxinglibrary/camera/CameraManager;->setManualFramingRect(II)V

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectWidth:I

    .line 118
    iput p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectHeight:I

    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 129
    :catch_0
    :try_start_2
    sget-object v1, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v1, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting to saved camera params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 135
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 139
    iget-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 142
    :catch_1
    :try_start_4
    sget-object p1, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 234
    iget-boolean v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewCallback:Lcom/yzq/zxinglibrary/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/yzq/zxinglibrary/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 236
    iget-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewCallback:Lcom/yzq/zxinglibrary/camera/PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 310
    :try_start_0
    iput p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 3

    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->initialized:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->configManager:Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 323
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 324
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 326
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 327
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 329
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 330
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x5

    .line 331
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 333
    sget-object p1, Lcom/yzq/zxinglibrary/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated manual framing rect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 336
    :cond_2
    iput p1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectWidth:I

    .line 337
    iput p2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 202
    iget-boolean v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewing:Z

    .line 205
    new-instance v0, Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/yzq/zxinglibrary/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->autoFocusManager:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->autoFocusManager:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->autoFocusManager:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/AutoFocusManager;->stop()V

    .line 215
    iput-object v1, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->autoFocusManager:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 219
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewCallback:Lcom/yzq/zxinglibrary/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yzq/zxinglibrary/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 220
    iput-boolean v2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public switchFlashLight(Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 178
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "torch"

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "off"

    .line 182
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 184
    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 190
    iput v2, v1, Landroid/os/Message;->what:I

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/yzq/zxinglibrary/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 193
    invoke-virtual {p1, v1}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
