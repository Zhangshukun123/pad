.class Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;
.super Ljava/lang/Object;
.source "RxLocationTool.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxLocationTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLocationListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vondear/rxtool/RxLocationTool$1;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 440
    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->access$100()Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->access$100()Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 454
    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->access$100()Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->access$100()Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_0
    const-string p1, "onStatusChanged"

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u53ef\u89c1\u72b6\u6001"

    .line 459
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u6682\u505c\u670d\u52a1\u72b6\u6001"

    .line 465
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u670d\u52a1\u533a\u5916\u72b6\u6001"

    .line 462
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
