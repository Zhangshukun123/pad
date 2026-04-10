.class public Lcom/ayma/commonerp/bean/RequestHeaderBean;
.super Ljava/lang/Object;
.source "RequestHeaderBean.java"


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->sign:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->version:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->result:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->code:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->result:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestHeaderBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", result=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", code=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ayma/commonerp/bean/RequestHeaderBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
