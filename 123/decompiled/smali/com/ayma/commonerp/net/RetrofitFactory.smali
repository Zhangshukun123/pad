.class public Lcom/ayma/commonerp/net/RetrofitFactory;
.super Ljava/lang/Object;
.source "RetrofitFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/net/RetrofitFactory$ResponseDecodeInterceptor;,
        Lcom/ayma/commonerp/net/RetrofitFactory$RetryInterceptor;,
        Lcom/ayma/commonerp/net/RetrofitFactory$RequestHeadParamInterceptor;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "CONNECT_TIMEOUT"

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = "Bearer "

.field public static final KEY_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final PAY_TIME_OUT:I = 0x7

.field public static final READ_TIMEOUT:Ljava/lang/String; = "READ_TIMEOUT"

.field private static final RETRY_TIMES_MAX:I = 0x5

.field private static final SIMPLE_TIME_OUT:I = 0x7

.field private static TAG:Ljava/lang/String; = "RetrofitFactory"

.field private static final UPDATE_ORDER_STATUE_TIME_OUT:I = 0x1e

.field public static final WRITE_TIMEOUT:Ljava/lang/String; = "WRITE_TIMEOUT"

.field private static final ourInstance:Lcom/ayma/commonerp/net/RetrofitFactory;


# instance fields
.field private api:Lcom/ayma/commonerp/net/Api;

.field private gson:Lcom/google/gson/Gson;

.field private openShopRetrofit:Lretrofit2/Retrofit;

.field private payApi:Lcom/ayma/commonerp/net/PayApi;

.field private payRetrofit:Lretrofit2/Retrofit;

.field private retrofit:Lretrofit2/Retrofit;

.field private shopOrderRefundRetrofit:Lretrofit2/Retrofit;

.field private updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

.field private updateOrderStatueRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/ayma/commonerp/net/RetrofitFactory;

    invoke-direct {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/net/RetrofitFactory;->ourInstance:Lcom/ayma/commonerp/net/RetrofitFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initRetrofit()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/ayma/commonerp/net/RetrofitFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;
    .locals 1

    .line 62
    sget-object v0, Lcom/ayma/commonerp/net/RetrofitFactory;->ourInstance:Lcom/ayma/commonerp/net/RetrofitFactory;

    return-object v0
.end method

.method private initClient(I)Lokhttp3/OkHttpClient;
    .locals 3

    .line 151
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 153
    new-instance v1, Lcom/ayma/commonerp/net/RetrofitFactory$RequestHeadParamInterceptor;

    invoke-direct {v1}, Lcom/ayma/commonerp/net/RetrofitFactory$RequestHeadParamInterceptor;-><init>()V

    .line 171
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private initOpenShopRetrofit()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 90
    :cond_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_OPEN_SHOP:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 92
    invoke-static {v1}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 94
    invoke-direct {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->initClient(I)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->openShopRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method private initPayRetrofit()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 120
    :cond_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_PAY:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 122
    invoke-static {v1}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 124
    invoke-direct {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->initClient(I)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method private initRetrofit()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 78
    :cond_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_INTERFACE:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 80
    invoke-static {v1}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 82
    invoke-direct {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->initClient(I)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method private initShopOrderRefundRetrofit()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 102
    :cond_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_SHOP_ORDER_REFUND:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 104
    invoke-static {v1}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 106
    invoke-direct {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->initClient(I)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->shopOrderRefundRetrofit:Lretrofit2/Retrofit;

    return-void
.end method


# virtual methods
.method public cleanSpecialRetrofit()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payRetrofit:Lretrofit2/Retrofit;

    .line 298
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payApi:Lcom/ayma/commonerp/net/PayApi;

    .line 299
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueRetrofit:Lretrofit2/Retrofit;

    .line 300
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

    .line 301
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->openShopRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public create()Lcom/ayma/commonerp/net/Api;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->retrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initRetrofit()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->api:Lcom/ayma/commonerp/net/Api;

    if-nez v0, :cond_2

    .line 224
    const-class v0, Lcom/ayma/commonerp/net/Api;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->api:Lcom/ayma/commonerp/net/Api;

    if-nez v1, :cond_1

    .line 226
    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/net/Api;

    iput-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->api:Lcom/ayma/commonerp/net/Api;

    .line 228
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 230
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->api:Lcom/ayma/commonerp/net/Api;

    return-object v0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_1

    .line 287
    const-class v0, Lcom/google/gson/Gson;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 291
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 293
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public initUpdateOrderStatueRetrofit()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 137
    :cond_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_PAY:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->gson:Lcom/google/gson/Gson;

    .line 139
    invoke-static {v1}, Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/ayma/commonerp/net/converter/ResponseConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 141
    invoke-direct {p0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->initClient(I)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public openShopCreate()Lcom/ayma/commonerp/net/ShopApi;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->openShopRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initOpenShopRetrofit()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->openShopRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/ayma/commonerp/net/ShopApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/ShopApi;

    return-object v0
.end method

.method public payCreate()Lcom/ayma/commonerp/net/PayApi;
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initPayRetrofit()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payApi:Lcom/ayma/commonerp/net/PayApi;

    if-nez v0, :cond_2

    .line 257
    const-class v0, Lcom/ayma/commonerp/net/PayApi;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payApi:Lcom/ayma/commonerp/net/PayApi;

    if-nez v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payRetrofit:Lretrofit2/Retrofit;

    const-class v2, Lcom/ayma/commonerp/net/PayApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/net/PayApi;

    iput-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payApi:Lcom/ayma/commonerp/net/PayApi;

    .line 261
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 263
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->payApi:Lcom/ayma/commonerp/net/PayApi;

    return-object v0
.end method

.method public resetOpenShopRetrofit()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initOpenShopRetrofit()V

    return-void
.end method

.method public resetPayRetrofit()V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initPayRetrofit()V

    return-void
.end method

.method public resetRetrofit()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initRetrofit()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->api:Lcom/ayma/commonerp/net/Api;

    return-void
.end method

.method public resetUpdateOrderStatueRetrofit()V
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initUpdateOrderStatueRetrofit()V

    return-void
.end method

.method public shopOrderRefundCreate()Lcom/ayma/commonerp/net/ShopApi;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->shopOrderRefundRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initShopOrderRefundRetrofit()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->shopOrderRefundRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/ayma/commonerp/net/ShopApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/ShopApi;

    return-object v0
.end method

.method public updateOrderStatueCreate()Lcom/ayma/commonerp/net/PayApi;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/ayma/commonerp/net/RetrofitFactory;->initUpdateOrderStatueRetrofit()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

    if-nez v0, :cond_2

    .line 276
    const-class v0, Lcom/ayma/commonerp/net/PayApi;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueRetrofit:Lretrofit2/Retrofit;

    const-class v2, Lcom/ayma/commonerp/net/PayApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/net/PayApi;

    iput-object v1, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

    .line 280
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 282
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/net/RetrofitFactory;->updateOrderStatueApi:Lcom/ayma/commonerp/net/PayApi;

    return-object v0
.end method
