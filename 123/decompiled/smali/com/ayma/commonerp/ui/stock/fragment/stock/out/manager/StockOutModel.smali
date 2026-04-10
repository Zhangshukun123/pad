.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "StockOutModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutModel;


# static fields
.field protected static final HINT_STORE:Ljava/lang/String; = "\u5168\u90e8"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end field

.field private outTrainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outTrainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageNumber:I

.field private final storeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final storeListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoreTypeListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final storeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainList:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainMap:Ljava/util/Map;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->trainMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->pageNumber:I

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeList:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->trainList:Ljava/util/List;

    .line 60
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeMap:Ljava/util/Map;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeListMap:Ljava/util/Map;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->initGson()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeListMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->trainList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->initGson()V

    return-void
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->pageNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->trainMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public commitOutReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 679
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitOutReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 680
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$10;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dataChange(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 822
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 823
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->getOutHead()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 824
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 827
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public deletOutReceiptOnLine(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 644
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->delStoreOutReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 645
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 601
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadTrainData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->fetchOutTrains(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;>;)V"
        }
    .end annotation

    move-object v12, p0

    .line 304
    iget-object v0, v12, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    new-instance v13, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v13}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getOutReceiptBody(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;>;)V"
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOutStockTypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u5168\u90e8"

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->OUT_RECEIPT_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->pageNumber:I

    return v0
.end method

.method public getReceiptStatueCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 752
    sget-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->STOCK_RECEIPT_STATUE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getReceiptStatueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->STOCK_RECEIPT_STATUE_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getReceiptTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u5168\u90e8"

    const-string v2, ""

    .line 745
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v1, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->OUT_RECEIPT_TYPE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 747
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStockOutHeadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getStockTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeMap:Ljava/util/Map;

    const-string v1, "\u5168\u90e8"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getStoreList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getStoreDataNoOnline(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getStoreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeMap:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 807
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getStoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public gettrainId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->outTrainMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public queryTypeFromStore(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 773
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStockTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u7c7b\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    const-string v2, "\u5168\u90e8"

    if-eqz v0, :cond_2

    .line 775
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeListMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 776
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeListMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 778
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 781
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 782
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 784
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->storeListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    .line 790
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 794
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 796
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->typeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 799
    :cond_4
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 714
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/ayma/commonerp/net/Api;->revokeOutReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p2

    .line 715
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$11;

    invoke-direct {v0, p0, p3, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public uploadOutReceipt(Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 536
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/ayma/commonerp/net/Api;->uploadOutReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p4

    .line 537
    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;ILjava/lang/String;I)V

    invoke-interface {p4, v6}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
