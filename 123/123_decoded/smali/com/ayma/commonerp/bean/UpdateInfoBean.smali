.class public Lcom/ayma/commonerp/bean/UpdateInfoBean;
.super Ljava/lang/Object;
.source "UpdateInfoBean.java"


# instance fields
.field private apkName:Ljava/lang/String;

.field private apkSize:I

.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appType:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private createUser:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private lastModifyDate:Ljava/lang/String;

.field private lastModifyUser:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private updateType:I

.field private url:Ljava/lang/String;

.field private validFlag:Ljava/lang/String;

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->updateType:I

    return-void
.end method


# virtual methods
.method public getApkName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->apkSize:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyDate()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->lastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyUser()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->lastModifyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->updateType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnforceUpdate()Z
    .locals 1

    .line 151
    iget v0, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->updateType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->apkName:Ljava/lang/String;

    return-void
.end method

.method public setApkSize(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->apkSize:I

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->appType:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyDate(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->lastModifyDate:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyUser(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->lastModifyUser:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->tips:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->updateType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->validFlag:Ljava/lang/String;

    return-void
.end method

.method public setVerCode(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->verCode:I

    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UpdateInfoBean;->verName:Ljava/lang/String;

    return-void
.end method
