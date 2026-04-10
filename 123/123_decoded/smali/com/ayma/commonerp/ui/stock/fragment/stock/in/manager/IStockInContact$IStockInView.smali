.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;
.super Ljava/lang/Object;
.source "IStockInContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockInView"
.end annotation


# virtual methods
.method public abstract getStockInReceiptData(Z)V
.end method

.method public abstract notifyItemChange(I)V
.end method

.method public abstract notifyItemInsert(I)V
.end method

.method public abstract notifyItemRemove(I)V
.end method

.method public abstract notifyListChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectDate(Landroid/widget/TextView;I)V
.end method

.method public abstract showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end method

.method public abstract showPostMark(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStore(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStoreModel(Ljava/util/List;)V
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

.method public abstract uploadSuccess()V
.end method
