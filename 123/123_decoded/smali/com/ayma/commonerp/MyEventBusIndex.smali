.class public Lcom/ayma/commonerp/MyEventBusIndex;
.super Ljava/lang/Object;
.source "MyEventBusIndex.java"

# interfaces
.implements Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;


# static fields
.field private static final SUBSCRIBER_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/MyEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    .line 20
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "dealSelectGoodsResult"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 26
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "dealSelectGoodsEvent"

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 32
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "updataUnuploadData"

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 38
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v7, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 44
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "dealUploadSellDataEvent"

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 50
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v7, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 56
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/ReceiptSelectGoodsResult;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v7, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 62
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/bean/SCOrderBean;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "dealOrderCompleteOrderEvent"

    invoke-direct {v4, v8, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 68
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/ayma/commonerp/eventbus/SaveSellServiceResult;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "dealPayResult"

    invoke-direct {v6, v10, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Ljava/util/List;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "dealSelectedGoods"

    invoke-direct {v6, v10, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 75
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/ayma/commonerp/bean/SellDetailBean;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onSelectGoods"

    invoke-direct {v6, v10, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 80
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v9, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 86
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/ayma/commonerp/eventbus/OnlinePayData;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "receiveSelectGoodsList"

    invoke-direct {v6, v9, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 92
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    new-array v3, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "dealCounterOrder"

    invoke-direct {v4, v8, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/ayma/commonerp/eventbus/Sale12306DotEvent;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "dealSale12306OrderTip"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Lcom/ayma/commonerp/MyEventBusIndex;->putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static putIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V
    .locals 2

    .line 103
    sget-object v0, Lcom/ayma/commonerp/MyEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    invoke-interface {p0}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSubscriberClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSubscriberInfo(Ljava/lang/Class;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/ayma/commonerp/MyEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
