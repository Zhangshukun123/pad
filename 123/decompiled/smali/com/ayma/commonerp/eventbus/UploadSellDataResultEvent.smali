.class public Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;
.super Ljava/lang/Object;
.source "UploadSellDataResultEvent.java"


# instance fields
.field private message:Ljava/lang/String;

.field private statue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->statue:Z

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->message:Ljava/lang/String;

    .line 17
    iput-boolean p1, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->statue:Z

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isStatue()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->statue:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatue(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;->statue:Z

    return-void
.end method
