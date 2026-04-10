.class public interface abstract Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehousePresenter;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehouseContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReplenishmentQuotWarehousePresenter"
.end annotation


# virtual methods
.method public abstract addSelectGoods(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract calculateAmount()V
.end method

.method public abstract clearAllGoods()V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract filterGoodsByStoreType(Ljava/lang/String;)V
.end method

.method public abstract filterGoodsDate(Ljava/lang/String;)V
.end method

.method public abstract getStockNameByCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreList(Ljava/lang/String;)V
.end method

.method public abstract initBaseData(Ljava/lang/String;)V
.end method

.method public abstract initHandler()V
.end method

.method public abstract isCanAddForOtherTrain()Z
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryGoodsType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract querySupplier(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryTrainSellData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendMessage(IILjava/lang/Object;)V
.end method

.method public abstract storeChange(Ljava/lang/String;)V
.end method

.method public abstract submitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract submitSaleOutBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract submitTeamReturnBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract toSelectGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method
