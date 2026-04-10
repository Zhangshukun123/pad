.class public final Lcom/vondear/rxfeature/module/scaner/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static FRAME_HEIGHT:I

.field public static FRAME_MARGINTOP:I

.field public static FRAME_WIDTH:I

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/vondear/rxfeature/module/scaner/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private parameter:Landroid/hardware/Camera$Parameters;

.field private final previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 40
    sput v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_WIDTH:I

    .line 41
    sput v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_HEIGHT:I

    .line 42
    sput v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_MARGINTOP:I

    .line 48
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 53
    :goto_0
    sput v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->context:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    .line 85
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->useOneShotPreviewCallback:Z

    .line 87
    new-instance p1, Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    iget-boolean v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {p1, v0, v1}, Lcom/vondear/rxfeature/module/scaner/PreviewCallback;-><init>(Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;Z)V

    iput-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    .line 88
    new-instance p1, Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    invoke-direct {p1}, Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    return-void
.end method

.method public static get()Lcom/vondear/rxfeature/module/scaner/CameraManager;
    .locals 1

    .line 108
    sget-object v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->cameraManager:Lcom/vondear/rxfeature/module/scaner/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->cameraManager:Lcom/vondear/rxfeature/module/scaner/CameraManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;

    invoke-direct {v0, p0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->cameraManager:Lcom/vondear/rxfeature/module/scaner/CameraManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;
    .locals 12

    .line 264
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getPreviewFormat()I

    move-result v1

    .line 266
    iget-object v2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string v3, "yuv420p"

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    new-instance v1, Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v1

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_1
    new-instance v8, Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/vondear/rxfeature/module/scaner/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public closeDriver()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/FlashlightManager;->disableFlashlight()V

    .line 140
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getAutoFocusCallback()Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    return-object v0

    .line 218
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    sget v3, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 221
    sget v3, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_MARGINTOP:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 222
    sget v1, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_MARGINTOP:I

    goto :goto_0

    .line 224
    :cond_1
    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 226
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_WIDTH:I

    add-int/2addr v4, v2

    sget v5, Lcom/vondear/rxfeature/module/scaner/CameraManager;->FRAME_HEIGHT:I

    add-int/2addr v5, v1

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/scaner/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 242
    iget-object v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 245
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 246
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 247
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 248
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 249
    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewCallback()Lcom/vondear/rxfeature/module/scaner/PreviewCallback;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    return-object v0
.end method

.method public isPreviewing()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    return v0
.end method

.method public isUseOneShotPreviewCallback()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->useOneShotPreviewCallback:Z

    return v0
.end method

.method public offLight()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    .line 331
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 119
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 125
    iget-boolean p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->initialized:Z

    .line 127
    iget-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->configManager:Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;

    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/module/scaner/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 130
    invoke-static {}, Lcom/vondear/rxfeature/module/scaner/FlashlightManager;->enableFlashlight()V

    goto :goto_0

    .line 121
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public openLight()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    .line 323
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 199
    iget-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/vondear/rxfeature/module/scaner/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 181
    iget-boolean p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    if-eqz v1, :cond_1

    .line 160
    iget-boolean v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 164
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewCallback:Lcom/vondear/rxfeature/module/scaner/PreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/vondear/rxfeature/module/scaner/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 165
    iget-object v0, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->autoFocusCallback:Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/vondear/rxfeature/module/scaner/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 166
    iput-boolean v1, p0, Lcom/vondear/rxfeature/module/scaner/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method
