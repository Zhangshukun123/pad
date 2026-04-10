.class public Lcom/ayma/commonerp/net/converter/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;

.field private info:Ljava/lang/String;


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

    .line 17
    iget v0, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->code:I

    return v0
.end method

.method public getData()Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->data:Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->code:I

    return-void
.end method

.method public setData(Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->data:Lcom/ayma/commonerp/net/converter/ErrorResponse$DataBean;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/net/converter/ErrorResponse;->info:Ljava/lang/String;

    return-void
.end method
