.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditPresenter;
.super Ljava/lang/Object;
.source "StockInEditContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockInEditPresenter"
.end annotation


# virtual methods
.method public abstract addGoods(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;)V
.end method

.method public abstract addStockReceiptHeadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
.end method

.method public abstract checkCommitReceipt()V
.end method

.method public abstract clearAllGoods()V
.end method

.method public abstract delGoodsItem(I)V
.end method

.method public abstract deleteStockData(Ljava/lang/String;)V
.end method

.method public abstract editItem(I)V
.end method

.method public abstract fetchGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchGoodsDataFromLocal(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchGoodsDataFromServer(Ljava/lang/String;)V
.end method

.method public abstract fetchGoodsList(Ljava/lang/String;Z)V
.end method

.method public abstract fetchStoreData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchStoreModelDataA(Ljava/lang/String;)V
.end method

.method public abstract fetchSupplier(Ljava/lang/String;)V
.end method

.method public abstract revokeReceipt()V
.end method

.method public abstract saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract scanAddData(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract searchSuppierList(Ljava/lang/String;)V
.end method

.method public abstract uploadOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
