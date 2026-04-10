.class public Lcom/ayma/commonerp/bean/VersionBean;
.super Ljava/lang/Object;
.source "VersionBean.java"


# instance fields
.field private apkname:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkname()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/bean/VersionBean;->apkname:Ljava/lang/String;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/bean/VersionBean;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ayma/commonerp/bean/VersionBean;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/bean/VersionBean;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkname(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/bean/VersionBean;->apkname:Ljava/lang/String;

    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/bean/VersionBean;->appname:Ljava/lang/String;

    return-void
.end method

.method public setVerCode(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/ayma/commonerp/bean/VersionBean;->verCode:I

    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/bean/VersionBean;->verName:Ljava/lang/String;

    return-void
.end method
