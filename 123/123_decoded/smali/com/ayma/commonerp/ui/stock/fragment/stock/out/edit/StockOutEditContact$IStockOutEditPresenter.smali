.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditPresenter;
.super Ljava/lang/Object;
.source "StockOutEditContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockOutEditPresenter"
.end annotation


# virtual methods
.method public abstract addGoodsBirthdayData(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;)V
.end method

.method public abstract addGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract addStockReceiptOutHeadData(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V
.end method

.method public abstract addTrainNo(Ljava/lang/String;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract clearAll()V
.end method

.method public abstract clearAllGoodsData()V
.end method

.method public abstract delItem(I)V
.end method

.method public abstract fetchGoods(Ljava/lang/String;Z)V
.end method

.method public abstract fetchGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchNewGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fetchStoreData()V
.end method

.method public abstract fetchStoreModelData(Ljava/lang/String;)V
.end method

.method public abstract fetchTemplateData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract filterTrain(Ljava/lang/String;)V
.end method

.method public abstract getIsChange()Z
.end method

.method public abstract getIsSave()Z
.end method

.method public abstract goodsDataChange(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeSelectedTrain(I)V
.end method

.method public abstract saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract selectedTrain()V
.end method

.method public abstract showTrainNoData()V
.end method

.method public abstract submit()V
.end method

.method public abstract submitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
