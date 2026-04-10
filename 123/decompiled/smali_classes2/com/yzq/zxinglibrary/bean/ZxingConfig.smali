.class public Lcom/yzq/zxinglibrary/bean/ZxingConfig;
.super Ljava/lang/Object;
.source "ZxingConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private frameLineColor:I

.field private isDecodeBarCode:Z

.field private isFullScreenScan:Z

.field private isPlayBeep:Z

.field private isShake:Z

.field private isShowAlbum:Z

.field private isShowFlashLight:Z

.field private isShowbottomLayout:Z

.field private reactColor:I

.field private scanLineColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isPlayBeep:Z

    .line 22
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShake:Z

    .line 24
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowbottomLayout:Z

    .line 26
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowFlashLight:Z

    .line 28
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowAlbum:Z

    .line 30
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isDecodeBarCode:Z

    .line 32
    iput-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isFullScreenScan:Z

    .line 35
    sget v0, Lcom/yzq/zxinglibrary/R$color;->react:I

    iput v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->reactColor:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->frameLineColor:I

    .line 43
    sget v0, Lcom/yzq/zxinglibrary/R$color;->scanLineColor:I

    iput v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->scanLineColor:I

    return-void
.end method


# virtual methods
.method public getFrameLineColor()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->frameLineColor:I

    return v0
.end method

.method public getReactColor()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->reactColor:I

    return v0
.end method

.method public getScanLineColor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->scanLineColor:I

    return v0
.end method

.method public isDecodeBarCode()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isDecodeBarCode:Z

    return v0
.end method

.method public isFullScreenScan()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isFullScreenScan:Z

    return v0
.end method

.method public isPlayBeep()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isPlayBeep:Z

    return v0
.end method

.method public isShake()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShake:Z

    return v0
.end method

.method public isShowAlbum()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowAlbum:Z

    return v0
.end method

.method public isShowFlashLight()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowFlashLight:Z

    return v0
.end method

.method public isShowbottomLayout()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowbottomLayout:Z

    return v0
.end method

.method public setDecodeBarCode(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isDecodeBarCode:Z

    return-void
.end method

.method public setFrameLineColor(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->frameLineColor:I

    return-void
.end method

.method public setFullScreenScan(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isFullScreenScan:Z

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isPlayBeep:Z

    return-void
.end method

.method public setReactColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->reactColor:I

    return-void
.end method

.method public setScanLineColor(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->scanLineColor:I

    return-void
.end method

.method public setShake(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShake:Z

    return-void
.end method

.method public setShowAlbum(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowAlbum:Z

    return-void
.end method

.method public setShowFlashLight(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowFlashLight:Z

    return-void
.end method

.method public setShowbottomLayout(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->isShowbottomLayout:Z

    return-void
.end method
