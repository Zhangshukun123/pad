.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;
.super Ljava/lang/Object;
.source "StockInEditContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockInEditView"
.end annotation


# virtual methods
.method public abstract clearInput()V
.end method

.method public abstract commitSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V
.end method

.method public abstract editRemark(Ljava/lang/String;)V
.end method

.method public abstract generateUpdateEvent(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;
.end method

.method public abstract hideCommitOption()V
.end method

.method public abstract notifyGoodsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyItemRemove(I)V
.end method

.method public abstract notifyListChange(I)V
.end method

.method public abstract notifyListInsert(I)V
.end method

.method public abstract registerScanReceiver()V
.end method

.method public abstract revokeSuccess()V
.end method

.method public abstract saveSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
.end method

.method public abstract searchGoods(Ljava/lang/String;Z)V
.end method

.method public abstract showChangeGoodsDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;I)V
.end method

.method public abstract showGoodsListDialog(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showGoodsSelect(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showQtyAndAmount(DD)V
.end method

.method public abstract showReceiptInfo(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V
.end method

.method public abstract showReceiptInfo(Ljava/lang/String;)V
.end method

.method public abstract showStoreData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStoreModelData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSupplier(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterScanReceiver()V
.end method

.method public abstract uploadSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
.end method
