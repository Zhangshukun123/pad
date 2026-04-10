.class public Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;
.super Ljava/lang/Object;
.source "RetrofitFactory.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/net/RetrofitFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryInterceptor"
.end annotation


# instance fields
.field retryTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;->retryTimes:I

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 380
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 381
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;->retryTimes:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 382
    iput v2, p0, Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;->retryTimes:I

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fde\u63a5\u5931\u8d25\uff0c\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;->retryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u5c1d\u8bd5\u91cd\u8fde"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RetryInterceptor"

    invoke-static {v2, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method
