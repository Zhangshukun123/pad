.class public Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "TeamReturnModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamreturn/ITeamReturnModel;


# static fields
.field protected static final HINT_DATA_STORE:Ljava/lang/String; = "\u5168\u90e8"

.field protected static final HINT_STORE:Ljava/lang/String; = "\u8bf7\u9009\u62e9"


# instance fields
.field private final dataList:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dataStoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final originList:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private otherType:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

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

.field private totalCount:D

.field private totalMoney:D

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

    .line 60
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-direct {p1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->otherType:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    const-string v0, "\u672a\u77e5\u5206\u7c7b"

    .line 62
    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setGoodsTypeName(Ljava/lang/String;)V

    .line 63
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    .line 64
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeList:Ljava/util/List;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    const-string v0, "\u8bf7\u9009\u62e9"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeMap:Ljava/util/Map;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeListMap:Ljava/util/Map;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataStoreList:Ljava/util/List;

    const-string v0, "\u5168\u90e8"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataStoreList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->initGson()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->initGson()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->initGson()V

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Landroidx/collection/ArrayMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Landroidx/collection/ArrayMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeListMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addData(Ljava/util/Collection;Landroidx/collection/ArrayMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 273
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->otherType:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->otherType:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->otherType:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, p3, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->isAdd(ZLcom/ayma/commonerp/bean/ReceiptSelectBean;Ljava/util/List;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 284
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, p3, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->isAdd(ZLcom/ayma/commonerp/bean/ReceiptSelectBean;Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_4
    new-instance v2, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-direct {v2}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;-><init>()V

    .line 297
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setGoodsTypeName(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGsortOrder()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setSortOrder(I)V

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p2, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addData(Ljava/util/Collection;Landroidx/collection/ArrayMap;Z)V

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addData(Ljava/util/Collection;Landroidx/collection/ArrayMap;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 257
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addTrainStock(Ljava/util/List;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 553
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 554
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 559
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 562
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setStock(D)V

    .line 563
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    .line 566
    new-instance v5, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    .line 567
    invoke-virtual {v5, v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice0()D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    .line 571
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice()D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    .line 572
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostShuilv()D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 573
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getStoreType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStoreType(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 580
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    .line 583
    :cond_1
    new-instance v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v8

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;-><init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;DD)V

    .line 584
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 588
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 590
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_3

    .line 591
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 594
    :cond_4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 595
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addData(Ljava/util/Collection;Landroidx/collection/ArrayMap;Z)V

    .line 596
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "\u5168\u90e8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 601
    :cond_5
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->filterDataByStoreType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 603
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 597
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->addData(Ljava/util/Collection;Landroidx/collection/ArrayMap;Z)V

    .line 608
    :goto_3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 610
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 611
    invoke-interface {p3, p4}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 613
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 614
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public calculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    const-string v0, "\u5217\u8868\u4e3a\u7a7a"

    .line 436
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 440
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public calculateTotalCountAndPrice()V
    .locals 11

    const-wide/16 v0, 0x0

    .line 347
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalCount:D

    .line 348
    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalMoney:D

    .line 349
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 350
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 351
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 354
    :cond_2
    iget-wide v5, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalCount:D

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalCount:D

    .line 355
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 356
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 361
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 362
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v5

    goto :goto_1

    :cond_5
    move-wide v5, v0

    .line 366
    :goto_1
    iget-wide v7, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalMoney:D

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalMoney:D

    goto :goto_0

    :cond_6
    return-void
.end method

.method public checkCanReturn()Z
    .locals 9

    .line 722
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 726
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 727
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_2

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public clearAllData()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 221
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    return-void
.end method

.method public clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    const-string v0, "\u6570\u636e\u5f02\u5e38"

    .line 232
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    if-nez v1, :cond_1

    const-string v0, "\u6570\u636e\u51fa\u9519"

    .line 236
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 239
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 240
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 241
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 242
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public filerGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 737
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public filterDataByStoreType(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 780
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    const-string v0, "\u5168\u90e8"

    .line 781
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    return-void

    .line 785
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 789
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 790
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_0

    .line 794
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 795
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v4

    .line 796
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 797
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    .line 799
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 800
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 787
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u5e93\u522b\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u5f53\u524d\u9875\u9762\u91cd\u8bd5"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 778
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u8bf7\u5148\u67e5\u8be2\u6570\u636e\u540e\u64cd\u4f5c"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public filterDataByStoreType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 816
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->filterDataByStoreType(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 818
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 820
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBillDetail()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 389
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 391
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    new-instance v4, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;-><init>()V

    .line 395
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    .line 397
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsName(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsCode(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice(D)V

    .line 403
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice0(D)V

    .line 404
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostShuilv(D)V

    .line 406
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    .line 407
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 408
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 410
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSaleType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 411
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesShuilv()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesShuilv(D)V

    .line 412
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPrice(D)V

    .line 413
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice0()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSalesPrice0(D)V

    .line 419
    :cond_4
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setBirthDay(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setAutualQty(Ljava/lang/String;)V

    const-string v3, ""

    .line 424
    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setDescription(Ljava/lang/String;)V

    .line 426
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public getDataList()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getDataStoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataStoreList:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsIdByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 627
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsIdByGoodsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
    .locals 2

    .line 638
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 639
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    const-string v1, "\u6b63\u5e38\u9500\u552e"

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object p1

    return-object p1
.end method

.method public getStockNameByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 827
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-string p1, "\u672a\u77e5"

    return-object p1
.end method

.method public getStoreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeMap:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 382
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeMap:Ljava/util/Map;

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

    .line 840
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeList:Ljava/util/List;

    return-object v0
.end method

.method public getStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 717
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getTeamTrainSellData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 503
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryTeamSaleDetail(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 504
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->clearAllData()V

    .line 505
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getTeamTrainStock(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 458
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->queryWarehouse(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 459
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->clearAllData()V

    .line 460
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getTotalCount()D
    .locals 2

    .line 848
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalCount:D

    return-wide v0
.end method

.method public getTotalMoney()D
    .locals 2

    .line 852
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->totalMoney:D

    return-wide v0
.end method

.method public getTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 645
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
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

    .line 856
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public isAdd(ZLcom/ayma/commonerp/bean/ReceiptSelectBean;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 320
    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->equal(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    .line 322
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    .line 324
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 332
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    .line 333
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setStock(D)V

    :cond_5
    :goto_0
    if-nez v2, :cond_6

    .line 341
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public postGetStoreList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

    .line 85
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->getStoreList(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public postSaleOutBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitTrainAddStock(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 156
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$2;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public postTeamReturnBill(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/net/Api;->commitTrainOutStock(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    .line 191
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 446
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsCompanyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryGoodsSupplierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 709
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSupplier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryGoodsTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUseeInit()V

    .line 703
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryTypeFromStore(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 650
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->getStoreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u7c7b\u522b\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    const-string v2, "\u8bf7\u9009\u62e9"

    if-eqz v0, :cond_2

    .line 652
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeListMap:Ljava/util/Map;

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

    .line 653
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeListMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 655
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 659
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 661
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->storeListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    .line 667
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 671
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 673
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->typeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 676
    :cond_4
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method

.method public searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public sortListNew(Landroidx/collection/ArrayMap;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 5

    .line 687
    :try_start_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 689
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->originList:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->dataList:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnModel;->calculateTotalCountAndPrice()V

    .line 693
    invoke-interface {p3}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
