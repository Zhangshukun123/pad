.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/IStockInEditModel;
.super Ljava/lang/Object;
.source "IStockInEditModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract addGoodsToList(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;)Lcom/ayma/commonerp/bean/ListItemOptionBean;
.end method

.method public abstract addStockReceiptInHeadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
.end method

.method public abstract checkCommit(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAllData()V
.end method

.method public abstract delGoodsItem(I)V
.end method

.method public abstract deleteStockData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchGoodsDataFromLocal(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchGoodsList(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchStoreData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchStoreDataNoOnline(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract fetchStoreModelData(Ljava/lang/String;)V
.end method

.method public abstract fetchSupplier(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchSupplierNoOnline(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getAllCount()D
.end method

.method public abstract getAllMoney()D
.end method

.method public abstract getGoodsData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInReceiptHead()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
.end method

.method public abstract getStoreId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
.end method

.method public abstract getStoreInDs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStoreList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStoreModel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreModelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupplier()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupplierId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract revokeOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/ListItemOptionBean<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract searchSuppierList(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract upload(Ljava/util/TreeMap;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method
