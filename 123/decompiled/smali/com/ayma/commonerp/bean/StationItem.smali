.class public Lcom/ayma/commonerp/bean/StationItem;
.super Ljava/lang/Object;
.source "StationItem.java"


# instance fields
.field private stationName:Ljava/lang/String;

.field private stationTelecode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStationName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StationItem;->stationName:Ljava/lang/String;

    return-object v0
.end method

.method public getStationTelecode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StationItem;->stationTelecode:Ljava/lang/String;

    return-object v0
.end method

.method public setStationName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StationItem;->stationName:Ljava/lang/String;

    return-void
.end method

.method public setStationTelecode(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StationItem;->stationTelecode:Ljava/lang/String;

    return-void
.end method
