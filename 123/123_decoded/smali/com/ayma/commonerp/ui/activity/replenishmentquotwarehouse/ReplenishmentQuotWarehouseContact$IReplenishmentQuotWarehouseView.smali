.class public interface abstract Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehouseContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReplenishmentQuotWarehouseView"
.end annotation


# virtual methods
.method public abstract commitSuccess()V
.end method

.method public abstract filterResult(ZLjava/lang/String;)V
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListChange()V
.end method

.method public abstract notifyTypeChange()V
.end method

.method public abstract setCanAddForOtherTrain(Z)V
.end method

.method public abstract showCountAndTotalPrice(DD)V
.end method

.method public abstract showEditCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract showGetStoreListError(Ljava/lang/String;)V
.end method

.method public abstract showGoodsDetailPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
.end method

.method public abstract showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract showSelectDateDialog(Landroid/widget/TextView;Z)V
.end method

.method public abstract toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V
.end method
