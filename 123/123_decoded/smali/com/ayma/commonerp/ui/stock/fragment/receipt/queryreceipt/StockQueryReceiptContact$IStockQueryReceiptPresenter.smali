.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact$IStockQueryReceiptPresenter;
.super Ljava/lang/Object;
.source "StockQueryReceiptContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockQueryReceiptPresenter"
.end annotation


# virtual methods
.method public abstract commitStockReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteStockReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchTrainReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initStores()V
.end method

.method public abstract initTrains()V
.end method

.method public abstract queryAllNoCommitReceipt(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryTrain(Ljava/lang/String;)V
.end method

.method public abstract queryTrainMembers(Lcom/ayma/commonerp/bean/StockTrainItem;Ljava/lang/String;)V
.end method

.method public abstract revokeStockReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stockSignOutForTrain(Lcom/ayma/commonerp/bean/StockTrainItem;Lcom/ayma/commonerp/bean/TrainMemberBean;Ljava/lang/String;)V
.end method

.method public abstract updateReceiptStatue(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
