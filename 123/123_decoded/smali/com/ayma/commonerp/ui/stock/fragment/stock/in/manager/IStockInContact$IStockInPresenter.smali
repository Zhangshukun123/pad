.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInPresenter;
.super Ljava/lang/Object;
.source "IStockInContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockInPresenter"
.end annotation


# virtual methods
.method public abstract dataChange(Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;)V
.end method

.method public abstract deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;IZ)V
.end method

.method public abstract deleteReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end method

.method public abstract fetchGoodsDataFromServer(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end method

.method public abstract fetchStockType(Ljava/lang/String;)V
.end method

.method public abstract getStoreData()V
.end method

.method public abstract getSupplier()V
.end method

.method public abstract prepareUploadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end method

.method public abstract queryStockInReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract revokeOrder(Ljava/lang/String;)V
.end method

.method public abstract submitOrder(Ljava/lang/String;)V
.end method

.method public abstract uploadReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "I)V"
        }
    .end annotation
.end method
