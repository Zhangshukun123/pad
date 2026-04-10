.class public Lcom/ayma/commonerp/bean/LoginBean;
.super Ljava/lang/Object;
.source "LoginBean.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private success:Z

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/ayma/commonerp/bean/LoginBean;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/bean/LoginBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ayma/commonerp/bean/LoginBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/LoginBean;->timestamp:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/LoginBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/ayma/commonerp/bean/LoginBean;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ayma/commonerp/bean/LoginBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ayma/commonerp/bean/LoginBean;->result:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/LoginBean;->success:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/LoginBean;->timestamp:J

    return-void
.end method
