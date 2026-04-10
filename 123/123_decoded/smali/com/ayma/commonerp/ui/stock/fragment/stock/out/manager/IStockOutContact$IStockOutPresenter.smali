.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutPresenter;
.super Ljava/lang/Object;
.source "IStockOutContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockOutPresenter"
.end annotation


# virtual methods
.method public abstract commitOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
.end method

.method public abstract dataChange(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;)V
.end method

.method public abstract deletOutReceiptOnLine(Ljava/lang/String;I)V
.end method

.method public abstract deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
.end method

.method public abstract downloadTrainData()V
.end method

.method public abstract fetchTrain(Ljava/lang/String;)V
.end method

.method public abstract getStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract getStoreData()V
.end method

.method public abstract prepareUploadReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
.end method

.method public abstract revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
.end method

.method public abstract storeChange(Ljava/lang/String;)V
.end method

.method public abstract uploadReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "I",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation
.end method
