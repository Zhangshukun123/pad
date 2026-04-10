.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "StockInModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInModel;


# instance fields
.field private postMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stockReceiptInHeadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation
.end field

.field private storeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeListMap:Ljava/util/Map;
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

.field private storeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supplierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supplierMap:Ljava/util/Map;
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
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeList:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeMap:Ljava/util/Map;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeMap:Ljava/util/Map;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeListMap:Ljava/util/Map;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierList:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierMap:Ljava/util/Map;

    .line 49
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE:Ljava/util/List;

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->postMarkList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->initGson()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->initGson()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->initGson()V

    return-void
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeListMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public dataChange(Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 661
    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 662
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->getInHead()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 663
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 666
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 563
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 676
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->deleteStockInReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 677
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$12;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$12;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move/from16 v8, p7

    if-ne v8, v0, :cond_0

    move-object v0, p0

    .line 241
    iget-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 243
    :goto_0
    new-instance v14, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p1

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v14}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchDataFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p9

    .line 371
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-3"

    move-object/from16 v3, p8

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move/from16 v3, p6

    if-ne v3, v2, :cond_2

    .line 373
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, " 00:00"

    const-string v11, "%"

    if-eqz v3, :cond_1

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, " ifnull(billNo,\'\') like ?  and storeId = ? and storeType=?  and createDate>=? and createDate < ?"

    aput-object v4, v3, v9

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    aput-object p1, v3, v8

    aput-object p2, v3, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    invoke-static/range {p4 .. p4}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 374
    invoke-static {v3}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v12, " ifnull(billNo,\'\') like ?  and storeId = ? and storeType=? and supplierId  = ?  and createDate>=? and createDate < ?"

    aput-object v12, v3, v9

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    aput-object p1, v3, v8

    aput-object p2, v3, v7

    aput-object p5, v3, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-static/range {p4 .. p4}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 378
    invoke-static {v3}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    .line 383
    :goto_0
    const-class v1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    .line 384
    iget-object v2, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-void
.end method

.method public fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 625
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->fetchInGoodsData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 626
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchStockType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
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

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 606
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 607
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeListMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const-string p1, "\u5e93\u522b\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u5f53\u524d\u9875\u91cd"

    .line 609
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 612
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 613
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 616
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 618
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 619
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public fetchStore(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 57
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getStoreList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchStoreNoOnline(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 119
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchSupplier(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
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

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierList:Ljava/util/List;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->initListAndMap(Ljava/util/List;Ljava/util/Map;)V

    .line 160
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getSupplier(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchSupplierNoOnline(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierList:Ljava/util/List;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->initListAndMap(Ljava/util/List;Ljava/util/Map;)V

    .line 203
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPostMark()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->postMarkList:Ljava/util/List;

    return-object v0
.end method

.method public getPostMarkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 486
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE_MAP:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStockReceiptInHeadData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->stockReceiptInHeadList:Ljava/util/List;

    return-object v0
.end method

.method public getStore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeList:Ljava/util/List;

    return-object v0
.end method

.method public getStoreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoreModelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoreTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->storeTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getSupplier()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierList:Ljava/util/List;

    return-object v0
.end method

.method public getSupplierId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public initListAndMap(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 431
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 433
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    const-string v0, "\u5168\u90e8"

    .line 435
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    .line 437
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 439
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :goto_1
    const-string p1, ""

    .line 441
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public prepareUploadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 491
    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public revokeOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 390
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->revokeInOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 391
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$6;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public submitOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 410
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->submitStockInReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 411
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$7;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public uploadReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 530
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 531
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/commonerp/net/Api;->addUploadStockInEdit(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/commonerp/net/Api;->addUploadStockInEdit(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 535
    :goto_0
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$9;

    invoke-direct {p2, p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
