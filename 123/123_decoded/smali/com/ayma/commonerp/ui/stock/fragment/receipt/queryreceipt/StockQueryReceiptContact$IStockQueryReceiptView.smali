.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact$IStockQueryReceiptView;
.super Ljava/lang/Object;
.source "StockQueryReceiptContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockQueryReceiptView"
.end annotation


# virtual methods
.method public abstract exit()V
.end method

.method public abstract initList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyDateItemRemoved(I)V
.end method

.method public abstract notifyListChange()V
.end method

.method public abstract notifyListItemChange(I)V
.end method

.method public abstract setSignOutEnable(Z)V
.end method

.method public abstract showReceiptTypeAndStatue(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSelectDateDialog(Landroid/widget/TextView;)V
.end method

.method public abstract showStores(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTrainList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTrainMembers(Lcom/ayma/commonerp/bean/StockTrainItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/StockTrainItem;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TrainMemberBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract signOutSuccess()V
.end method

.method public abstract toReceiptDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateStores()V
.end method
