.class public Lcom/vondear/rxtool/RxLocationTool;
.super Ljava/lang/Object;
.source "RxLocationTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;,
        Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;
    }
.end annotation


# static fields
.field public static a:D = 6378245.0

.field public static ee:D = 0.006693421622965943

.field private static mListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener; = null

.field private static mLocationManager:Landroid/location/LocationManager; = null

.field private static myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener; = null

.field public static pi:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BD09ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 6

    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p0, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p2, v0

    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 303
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p0, p0, v2

    sub-double/2addr p2, p0

    .line 304
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    .line 305
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v0, v0, p2

    .line 306
    new-instance p2, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object p2
.end method

.method public static BD09ToGPS84(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 2

    .line 319
    invoke-static {p0, p1, p2, p3}, Lcom/vondear/rxtool/RxLocationTool;->BD09ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/vondear/rxtool/RxLocationTool;->GCJ02ToGPS84(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p0

    return-object p0
.end method

.method public static GCJ02ToBD09(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 6

    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    .line 284
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 285
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p0, p0, v2

    add-double/2addr p2, p0

    .line 286
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p0, v2

    .line 287
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v0, v0, p2

    const-wide p2, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p2

    .line 288
    new-instance p2, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object p2
.end method

.method public static GCJ02ToGPS84(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 5

    .line 268
    invoke-static {p0, p1, p2, p3}, Lcom/vondear/rxtool/RxLocationTool;->transform(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double p0, p0, v1

    .line 269
    invoke-virtual {v0}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide v3

    sub-double/2addr p0, v3

    mul-double p2, p2, v1

    .line 270
    invoke-virtual {v0}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v0

    sub-double/2addr p2, v0

    .line 271
    new-instance v0, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object v0
.end method

.method public static GPS84ToBD09(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 2

    .line 335
    invoke-static {p0, p1, p2, p3}, Lcom/vondear/rxtool/RxLocationTool;->GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Lcom/vondear/rxtool/model/Gps;->getLongitude()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/vondear/rxtool/model/Gps;->getLatitude()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/vondear/rxtool/RxLocationTool;->GCJ02ToBD09(DD)Lcom/vondear/rxtool/model/Gps;

    move-result-object p0

    return-object p0
.end method

.method public static GPS84ToGCJ02(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 18

    .line 243
    invoke-static/range {p0 .. p3}, Lcom/vondear/rxtool/RxLocationTool;->outOfChina(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide v0, 0x405a400000000000L    # 105.0

    sub-double v0, p0, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    sub-double v2, p2, v2

    .line 246
    invoke-static {v0, v1, v2, v3}, Lcom/vondear/rxtool/RxLocationTool;->transformLat(DD)D

    move-result-wide v4

    .line 247
    invoke-static {v0, v1, v2, v3}, Lcom/vondear/rxtool/RxLocationTool;->transformLon(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v6, p2, v2

    .line 248
    sget-wide v8, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v6, v6, v8

    .line 249
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 250
    sget-wide v10, Lcom/vondear/rxtool/RxLocationTool;->ee:D

    mul-double v10, v10, v8

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v10

    .line 251
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v4, v4, v2

    .line 252
    sget-wide v14, Lcom/vondear/rxtool/RxLocationTool;->a:D

    sget-wide v16, Lcom/vondear/rxtool/RxLocationTool;->ee:D

    sub-double v8, v8, v16

    mul-double v8, v8, v14

    mul-double v10, v10, v12

    div-double/2addr v8, v10

    sget-wide v10, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v8, v8, v10

    div-double/2addr v4, v8

    mul-double v0, v0, v2

    div-double/2addr v14, v12

    .line 253
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v14, v14, v2

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v14, v14, v2

    div-double/2addr v0, v14

    add-double v2, p2, v4

    add-double v0, p0, v0

    .line 256
    new-instance v4, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object v4
.end method

.method static synthetic access$100()Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;
    .locals 1

    .line 34
    sget-object v0, Lcom/vondear/rxtool/RxLocationTool;->mListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    return-object v0
.end method

.method public static getAddress(Landroid/content/Context;DD)Landroid/location/Address;
    .locals 6

    .line 162
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 164
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 166
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryName(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 0

    .line 183
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vondear/rxtool/RxLocationTool;->getAddress(Landroid/content/Context;DD)Landroid/location/Address;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getCriteria()Landroid/location/Criteria;
    .locals 2

    .line 137
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    .line 139
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method public static getLocality(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 0

    .line 196
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vondear/rxtool/RxLocationTool;->getAddress(Landroid/content/Context;DD)Landroid/location/Address;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getStreet(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vondear/rxtool/RxLocationTool;->getAddress(Landroid/content/Context;DD)Landroid/location/Address;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static gpsToDegree(D)Ljava/lang/String;
    .locals 8

    .line 223
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v2

    .line 225
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 227
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-double/2addr p0, v4

    mul-double p0, p0, v2

    invoke-virtual {v6, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u2032"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2033"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isGpsEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 53
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "network"

    .line 63
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMove(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 491
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    mul-double v1, v1, v3

    .line 492
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v3, v3

    .line 493
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v7, p0, v5

    if-lez v7, :cond_0

    const-wide v5, 0x4076800000000000L    # 360.0

    sub-double p0, v5, p0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmpl-double v8, v1, v5

    if-eqz v8, :cond_1

    const-wide v5, 0x4041800000000000L    # 35.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v10, v1, v5

    if-gez v10, :cond_2

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v10, v3, v5

    if-lez v10, :cond_2

    cmpg-double v5, v3, v8

    if-gez v5, :cond_2

    cmpl-double v1, p0, v8

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/high16 p0, 0x4044000000000000L    # 40.0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpg-double v10, v1, p0

    if-gez v10, :cond_3

    cmpl-double p0, v3, v8

    if-lez p0, :cond_3

    cmpg-double p0, v3, v5

    if-ltz p0, :cond_6

    :cond_3
    const-wide/high16 p0, 0x4049000000000000L    # 50.0

    cmpg-double v10, v1, p0

    if-gez v10, :cond_4

    cmpl-double p0, v3, v8

    if-lez p0, :cond_4

    cmpg-double p0, v3, v5

    if-ltz p0, :cond_6

    :cond_4
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    cmpg-double v10, v1, p0

    if-gez v10, :cond_5

    cmpl-double p0, v3, v8

    if-lez p0, :cond_5

    cmpg-double p0, v3, v5

    if-ltz p0, :cond_6

    :cond_5
    const-wide p0, 0x40c3878000000000L    # 9999.0

    cmpg-double v8, v1, p0

    if-gez v8, :cond_1

    cmpl-double p0, v3, v5

    if-lez p0, :cond_1

    :cond_6
    :goto_0
    return v0
.end method

.method public static openGpsSettings(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static outOfChina(DD)Z
    .locals 3

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_1

    const-wide p0, 0x3fea89a027525461L    # 0.8293

    cmpg-double v0, p2, p0

    if-ltz v0, :cond_1

    const-wide p0, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v0, p2, p0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static registerLocation(Landroid/content/Context;JJLcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 94
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    check-cast p0, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 96
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0

    :cond_1
    const-string v1, "location"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    .line 100
    sput-object p5, Lcom/vondear/rxtool/RxLocationTool;->mListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    .line 101
    invoke-static {p0}, Lcom/vondear/rxtool/RxLocationTool;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p1, 0x1f4

    const-string p2, "\u65e0\u6cd5\u5b9a\u4f4d\uff0c\u8bf7\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1"

    .line 102
    invoke-static {p0, p2, p1}, Lcom/vondear/rxtool/view/RxToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return v0

    .line 105
    :cond_2
    sget-object p0, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->getCriteria()Landroid/location/Criteria;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 107
    sget-object p0, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 109
    invoke-interface {p5, p0}, Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;->getLastKnownLocation(Landroid/location/Location;)V

    .line 111
    :cond_3
    sget-object p0, Lcom/vondear/rxtool/RxLocationTool;->myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    if-nez p0, :cond_4

    .line 112
    new-instance p0, Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    const/4 p5, 0x0

    invoke-direct {p0, p5}, Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;-><init>(Lcom/vondear/rxtool/RxLocationTool$1;)V

    sput-object p0, Lcom/vondear/rxtool/RxLocationTool;->myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    .line 114
    :cond_4
    sget-object v4, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    long-to-float v8, p3

    sget-object v9, Lcom/vondear/rxtool/RxLocationTool;->myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return v3
.end method

.method private static transform(DD)Lcom/vondear/rxtool/model/Gps;
    .locals 22

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 359
    invoke-static/range {p0 .. p3}, Lcom/vondear/rxtool/RxLocationTool;->outOfChina(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    new-instance v4, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object v4

    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, v0, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, v2, v6

    .line 362
    invoke-static {v4, v5, v6, v7}, Lcom/vondear/rxtool/RxLocationTool;->transformLat(DD)D

    move-result-wide v8

    .line 363
    invoke-static {v4, v5, v6, v7}, Lcom/vondear/rxtool/RxLocationTool;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, v2, v6

    .line 364
    sget-wide v12, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v10, v10, v12

    .line 365
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 366
    sget-wide v14, Lcom/vondear/rxtool/RxLocationTool;->ee:D

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 367
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v8, v8, v6

    .line 368
    sget-wide v18, Lcom/vondear/rxtool/RxLocationTool;->a:D

    sget-wide v20, Lcom/vondear/rxtool/RxLocationTool;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v12, v12, v14

    div-double/2addr v8, v12

    mul-double v4, v4, v6

    div-double v18, v18, v16

    .line 369
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double/2addr v2, v8

    add-double/2addr v0, v4

    .line 372
    new-instance v4, Lcom/vondear/rxtool/model/Gps;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vondear/rxtool/model/Gps;-><init>(DD)V

    return-object v4
.end method

.method private static transformLat(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 383
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 384
    sget-wide v8, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 385
    sget-wide p0, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 386
    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method private static transformLon(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 399
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 400
    sget-wide v6, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 401
    sget-wide p2, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 402
    sget-wide v6, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/vondear/rxtool/RxLocationTool;->pi:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static unRegisterLocation()V
    .locals 3

    .line 122
    sget-object v0, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 123
    sget-object v1, Lcom/vondear/rxtool/RxLocationTool;->myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    sput-object v2, Lcom/vondear/rxtool/RxLocationTool;->myLocationListener:Lcom/vondear/rxtool/RxLocationTool$MyLocationListener;

    .line 127
    :cond_0
    sput-object v2, Lcom/vondear/rxtool/RxLocationTool;->mLocationManager:Landroid/location/LocationManager;

    :cond_1
    return-void
.end method
