.class public interface abstract Lcom/ayma/commonerp/ui/activity/scrapped/IScrappedModel;
.super Ljava/lang/Object;
.source "IScrappedModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract addSelectGoodsToList(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract clearAllData()V
.end method

.method public abstract clearAllData(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getPricesBean(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
.end method

.method public abstract getScrappedList(Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ScrappedBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getScrappedTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStockCount(Ljava/lang/String;)D
.end method

.method public abstract postScrappedData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract queryScrappedType(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
