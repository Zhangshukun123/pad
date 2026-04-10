.class public Lcom/unitech/api/telephony/NetworkDataUsage;
.super Ljava/lang/Object;
.source "NetworkDataUsage.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private mobileRx:Ljava/lang/String;

.field private mobileTx:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private wifiRx:Ljava/lang/String;

.field private wifiTx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appName",
            "packageName",
            "mobileRx",
            "mobileTx",
            "wifiRx",
            "wifiTx"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->appName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->packageName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileRx:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileTx:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiRx:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiTx:Ljava/lang/String;

    return-void
.end method

.method public static convertToUsageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/unitech/api/telephony/NetworkDataUsage;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-static {v1}, Lcom/unitech/api/telephony/NetworkDataUsage;->fromJson(Ljava/lang/String;)Lcom/unitech/api/telephony/NetworkDataUsage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/unitech/api/telephony/NetworkDataUsage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonString"
        }
    .end annotation

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "appName"

    .line 50
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "packageName"

    .line 51
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "mobileRx"

    .line 52
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "mobileTx"

    .line 53
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "wifiRx"

    .line 54
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "wifiTx"

    .line 55
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    new-instance p0, Lcom/unitech/api/telephony/NetworkDataUsage;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/unitech/api/telephony/NetworkDataUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileRx()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileRx:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileTx()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileTx:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiRx()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiRx:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiTx()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiTx:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appName"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->appName:Ljava/lang/String;

    return-void
.end method

.method public setMobileRx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobileRx"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileRx:Ljava/lang/String;

    return-void
.end method

.method public setMobileTx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobileTx"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileTx:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setWifiRx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiRx"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiRx:Ljava/lang/String;

    return-void
.end method

.method public setWifiTx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiTx"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiTx:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appName"

    .line 34
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 35
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobileRx"

    .line 36
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileRx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobileTx"

    .line 37
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->mobileTx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wifiRx"

    .line 38
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiRx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wifiTx"

    .line 39
    iget-object v2, p0, Lcom/unitech/api/telephony/NetworkDataUsage;->wifiTx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
