.class public Lcom/ayma/commonerp/bean/ShopResultBean;
.super Ljava/lang/Object;
.source "ShopResultBean.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private ok:Ljava/lang/Boolean;

.field private returnCode:Ljava/lang/String;

.field private returnState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->ok:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->returnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnState()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->returnState:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->returnState:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setOk(Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->ok:Ljava/lang/Boolean;

    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->returnCode:Ljava/lang/String;

    return-void
.end method

.method public setReturnState(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ShopResultBean;->returnState:Ljava/lang/String;

    return-void
.end method
