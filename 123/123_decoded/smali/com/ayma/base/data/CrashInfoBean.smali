.class public Lcom/ayma/base/data/CrashInfoBean;
.super Ljava/lang/Object;
.source "CrashInfoBean.java"


# instance fields
.field private androidVersion:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private occurTime:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->description:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/ayma/base/data/CrashInfoBean;->phoneModel:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/ayma/base/data/CrashInfoBean;->appVersion:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/ayma/base/data/CrashInfoBean;->occurTime:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/ayma/base/data/CrashInfoBean;->androidVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/base/data/CrashInfoBean;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ayma/base/data/CrashInfoBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/base/data/CrashInfoBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOccurTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ayma/base/data/CrashInfoBean;->occurTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ayma/base/data/CrashInfoBean;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->androidVersion:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setOccurTime(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->occurTime:Ljava/lang/String;

    return-void
.end method

.method public setPhoneModel(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/base/data/CrashInfoBean;->phoneModel:Ljava/lang/String;

    return-void
.end method
