.class public Lcom/ayma/commonerp/bean/RespondBean;
.super Ljava/lang/Object;
.source "RespondBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private info:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/bean/RespondBean;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RespondBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RespondBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RespondBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RespondBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/bean/RespondBean;->result:Ljava/lang/Object;

    return-void
.end method
