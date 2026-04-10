.class public Lcom/ayma/commonerp/net/RequestEntity;
.super Ljava/lang/Object;
.source "RequestEntity.java"


# instance fields
.field private data:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ayma/commonerp/net/RequestEntity;->sign:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/ayma/commonerp/net/RequestEntity;->model:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/ayma/commonerp/net/RequestEntity;->version:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/ayma/commonerp/net/RequestEntity;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/net/RequestEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/net/RequestEntity;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/net/RequestEntity;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/net/RequestEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/net/RequestEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/net/RequestEntity;->model:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/net/RequestEntity;->sign:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/net/RequestEntity;->version:Ljava/lang/String;

    return-void
.end method
