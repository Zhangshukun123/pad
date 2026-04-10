.class public Lcom/vondear/rxtool/RxMapTool;
.super Ljava/lang/Object;
.source "RxMapTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metreToScreenPixel(DDLandroid/content/Context;)D
    .locals 4

    .line 134
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p4, p4

    float-to-double v0, p4

    const-wide v2, 0x4039666658a486ddL    # 25.39999918

    div-double/2addr v2, v0

    mul-double v2, v2, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, p2

    div-double/2addr p0, v2

    return-wide p0
.end method

.method public static openBaiduMapToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V
    .locals 5

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->GCJ02ToBD09(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidumap://map/direction?destination=name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|latlng:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&mode=driving&sy=3&index=0&target=1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openBrowserToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/vondear/rxtool/RxLocationTool;->GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://uri.amap.com/navigation?to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&mode=car&policy=1&src=mypage&coordinate=gaode&callnative=0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 120
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGaodeMapToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V
    .locals 5

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidamap://route?sourceApplication=amap&slat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&slon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&dlat="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&dlon="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&dname="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&dev=0&t=0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openMap(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.autonavi.minimap"

    .line 35
    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxPackageManagerTool;->haveExistPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/vondear/rxtool/RxMapTool;->openGaodeMapToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "com.baidu.BaiduMap"

    .line 38
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxPackageManagerTool;->haveExistPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-static {p0, p2, p3}, Lcom/vondear/rxtool/RxMapTool;->openBaiduMapToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/vondear/rxtool/RxMapTool;->openBrowserToGuide(Landroid/content/Context;Lcom/vondear/rxtool/model/Gps;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static screenPixelToMetre(DDLandroid/content/Context;)D
    .locals 4

    .line 150
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p4, p4

    float-to-double v0, p4

    const-wide v2, 0x4039666658a486ddL    # 25.39999918

    div-double/2addr v2, v0

    mul-double v2, v2, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, p2

    mul-double p0, p0, v2

    return-wide p0
.end method
