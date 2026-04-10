.class public interface abstract Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuPresenter;
.super Ljava/lang/Object;
.source "MenuContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMenuPresenter"
.end annotation


# virtual methods
.method public abstract checkAddGoodsPermission()V
.end method

.method public abstract checkHandoverPermission()V
.end method

.method public abstract checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkNoUploadSellData()V
.end method

.method public abstract checkSellCounterOrder()V
.end method

.method public abstract checkSellCounterStatue()V
.end method

.method public abstract checkSignStatue()V
.end method

.method public abstract checkSimCardInfo()V
.end method

.method public abstract checkToken()V
.end method

.method public abstract checkUpdate(Z)V
.end method

.method public abstract commitAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dealCounterOrder(Lcom/ayma/commonerp/eventbus/CounterOrderEvent;)V
.end method

.method public abstract deleteOldSellData()V
.end method

.method public abstract deleteOldSignInRecord()V
.end method

.method public abstract deleteOldSimCardInfo()V
.end method

.method public abstract downloadPdaPermission()V
.end method

.method public abstract downloadTeamSaleOutData()V
.end method

.method public abstract fetchHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchSaleData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchStoreList(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
.end method

.method public abstract fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
.end method

.method public abstract generateAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract generateHandoverReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initHandler()V
.end method

.method public abstract initSignInStatuePresenter()V
.end method

.method public abstract judgeToSell(I)V
.end method

.method public abstract loadMenu()V
.end method

.method public abstract onResume()V
.end method

.method public abstract query12306Order(Z)V
.end method

.method public abstract queryNeedUploadData()V
.end method

.method public abstract queryNotUploadDataSize()V
.end method

.method public abstract queryTakeOffPermission(ZLjava/lang/String;)V
.end method

.method public abstract queryTrainForQuickHandover(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveSignInStatue(ZZZI)V
.end method

.method public abstract saveSimCardInfo(Ljava/lang/String;)V
.end method

.method public abstract saveUpdateSignInTime()V
.end method

.method public abstract skipAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract skipHandover()V
.end method

.method public abstract startCheckUploadRunnable(J)V
.end method

.method public abstract takeOff(Ljava/lang/String;)V
.end method

.method public abstract updateOrderPayStatue(Z)V
.end method

.method public abstract updateSellDataStatue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSignInStatue(ZI)V
.end method

.method public abstract updateToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadSellDataToServer(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method
