.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SCOpenShopModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/ISCOpenShopModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public openShop(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    const-string v0, "application/json"

    .line 34
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->openShopCreate()Lcom/ayma/commonerp/net/ShopApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/ShopApi;->openShop(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
