.class public Lcom/vondear/rxtool/model/Gps;
.super Ljava/lang/Object;
.source "Gps.java"


# instance fields
.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p3, p4}, Lcom/vondear/rxtool/model/Gps;->setLatitude(D)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/vondear/rxtool/model/Gps;->setLongitude(D)V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/vondear/rxtool/model/Gps;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/vondear/rxtool/model/Gps;->mLongitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/vondear/rxtool/model/Gps;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/vondear/rxtool/model/Gps;->mLongitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/vondear/rxtool/model/Gps;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vondear/rxtool/model/Gps;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
