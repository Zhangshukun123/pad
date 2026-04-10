.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "StockInEditModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/IStockInEditModel;


# instance fields
.field private allCount:D

.field private allMoney:D

.field private goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;"
        }
    .end annotation
.end field

.field private inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field private isReceiptUpload:Z

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

.field private storeModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

.field private supplierNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierNameList:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierMap:Ljava/util/Map;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeList:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeMap:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModel:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModelMap:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeListMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allCount:D

    .line 58
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allMoney:D

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->initGson()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierNameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->initGson()V

    return-void
.end method

.method static synthetic access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeListMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModel:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModelMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addGoodsToList(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;)Lcom/ayma/commonerp/bean/ListItemOptionBean;
    .locals 8

    .line 536
    new-instance v0, Lcom/ayma/commonerp/bean/ListItemOptionBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/ListItemOptionBean;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 540
    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/ListItemOptionBean;->setEmptyListBefore(Z)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 543
    :goto_0
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v1, v4, :cond_2

    .line 544
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 545
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setQty(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v5, :cond_3

    .line 552
    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/ListItemOptionBean;->setNewItem(Z)V

    .line 553
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v3, v1

    .line 557
    :goto_2
    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/ListItemOptionBean;->setPosition(I)V

    return-object v0
.end method

.method public addStockReceiptInHeadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    .line 564
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isUpload()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    return-void
.end method

.method public checkCommit(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 892
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u5355\u636e%s\u5df2\u63d0\u4ea4\uff0c\u4e0d\u53ef\u518d\u6b21\u63d0\u4ea4"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 895
    :cond_1
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    if-nez v0, :cond_2

    const-string v0, "\u5f53\u524d\u5355\u636e\u6709\u4fee\u6539\uff0c\u8bf7\u4e0a\u4f20\u540e\u518d\u63d0\u4ea4"

    .line 896
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 899
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 900
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeInId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/net/Api;->submitStockInReceipt(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    .line 902
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u5148\u4e0a\u4f20\u5355\u636e"

    .line 888
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public clearAllData()V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 931
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    return-void
.end method

.method public delGoodsItem(I)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 675
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->delete()I

    .line 676
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 677
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->isReceiptUpload:Z

    return-void
.end method

.method public deleteStockData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 760
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;)V"
        }
    .end annotation

    .line 247
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->fetchInGoodsData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 248
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchGoodsDataFromLocal(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;)V"
        }
    .end annotation

    .line 284
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {p2}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchGoodsList(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 965
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$12;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;ZLjava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchStoreData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
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

    .line 72
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getStoreList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchStoreDataNoOnline(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchStoreModelData(Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 235
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModel:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModelMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchSupplier(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 574
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getSupplier(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 575
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$6;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchSupplierNoOnline(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 624
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllCount()D
    .locals 6

    const-wide/16 v0, 0x0

    .line 836
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allCount:D

    .line 837
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 838
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allCount:D

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allCount:D

    goto :goto_0

    .line 840
    :cond_0
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allCount:D

    return-wide v0
.end method

.method public getAllMoney()D
    .locals 6

    const-wide/16 v0, 0x0

    .line 845
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allMoney:D

    .line 846
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 847
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    .line 848
    iget-wide v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allMoney:D

    invoke-static {v3, v4, v1, v2}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allMoney:D

    goto :goto_0

    .line 850
    :cond_0
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->allMoney:D

    return-wide v0
.end method

.method public getGoodsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    return-object v0
.end method

.method public getInReceiptHead()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-object v0
.end method

.method public getStoreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoreIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    const-string v1, "1"

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    const-string v2, "SI5"

    .line 863
    invoke-static {v2}, Lcom/ayma/commonerp/util/StoreUtil;->generateBillNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setBillNo(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    const-string v3, "G"

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setBaseClass(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setCompanyId(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setCompany2Id(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setOpStoreType(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmssSSS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setCreateDate(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setCreateUser(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setCreateShowName(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setSourceType(Ljava/lang/String;)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setStoreId(Ljava/lang/String;)V

    .line 875
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setStoreName(Ljava/lang/String;)V

    .line 876
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModelMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setStoreType(Ljava/lang/String;)V

    .line 877
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierMap:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setSupplierId(Ljava/lang/String;)V

    .line 878
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1, p4}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setDescription(Ljava/lang/String;)V

    .line 879
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setHandFlag(Ljava/lang/String;)V

    .line 880
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setValidFlag(Ljava/lang/String;)V

    .line 881
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1, p5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setBillDay(Ljava/lang/String;)V

    .line 882
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->inReceiptHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-object p1
.end method

.method public getStoreInDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    return-object v0
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

    .line 801
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeList:Ljava/util/List;

    return-object v0
.end method

.method public getStoreModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoreModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->storeModel:Ljava/util/List;

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

    .line 811
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierNameList:Ljava/util/List;

    return-object v0
.end method

.method public getSupplierId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

    .line 940
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->revokeInOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 941
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$11;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    .line 684
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getStoreIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object p5

    const-string v0, "-3"

    .line 685
    invoke-virtual {p5, v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setPostMark(Ljava/lang/String;)V

    const-string v0, ""

    .line 686
    invoke-virtual {p5, v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setPostDate(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 689
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBillNo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setBillNo(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmssSSS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCreateDate(Ljava/lang/String;)V

    .line 694
    :cond_0
    invoke-virtual {v2, p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setStore(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v2, p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setStoreModel(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v2, p3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setOrderDate(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v2, p4}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setSupplier(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_1
    invoke-static {}, Lorg/litepal/Operator;->beginTransaction()V

    .line 700
    invoke-virtual {p5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->save()Z

    move-result p1

    .line 701
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->goodsList:Ljava/util/List;

    invoke-static {p2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 703
    invoke-static {}, Lorg/litepal/Operator;->setTransactionSuccessful()V

    .line 704
    invoke-interface {p6, p5}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u4fdd\u5b58\u5f02\u5e38"

    .line 706
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 709
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p6, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 710
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :goto_1
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    return-void

    :goto_2
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    .line 713
    throw p1
.end method

.method public searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/ListItemOptionBean<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;>;)V"
        }
    .end annotation

    .line 316
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public searchSuppierList(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 4
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

    .line 1017
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->supplierNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1019
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1023
    :cond_1
    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1025
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public upload(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 720
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 721
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/commonerp/net/Api;->addUploadStockInEdit(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 723
    :cond_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/commonerp/net/Api;->addUploadStockInEdit(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 725
    :goto_0
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$8;

    invoke-direct {p2, p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
