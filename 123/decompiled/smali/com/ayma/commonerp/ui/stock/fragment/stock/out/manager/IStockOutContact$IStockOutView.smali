.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;
.super Ljava/lang/Object;
.source "IStockOutContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockOutView"
.end annotation


# virtual methods
.method public abstract getDataSuccess()V
.end method

.method public abstract getStockOutReceipt(ZZ)V
.end method

.method public abstract notifyItemChange(I)V
.end method

.method public abstract notifyItemInsert(I)V
.end method

.method public abstract notifyListChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListItemChange(I)V
.end method

.method public abstract notifyListItemRemove(I)V
.end method

.method public abstract notifyTypeChange()V
.end method

.method public abstract selectDay(Landroid/widget/TextView;I)V
.end method

.method public abstract showOutStockTye(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;I)V
.end method

.method public abstract showReceiptStatue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStoreData(Ljava/util/List;Ljava/util/List;)V
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
