.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryselldetail/IQuerySellDetailModel;
.super Ljava/lang/Object;
.source "IQuerySellDetailModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract clearData()V
.end method

.method public abstract getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDiscountAmount()D
.end method

.method public abstract getGoodsId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSellDataFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.method public abstract getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTotalReturnAmount()D
.end method

.method public abstract getTotalReturnCount()D
.end method

.method public abstract getTotalSellAmount()D
.end method

.method public abstract getTotalSellCount()D
.end method

.method public abstract initBigType()V
.end method

.method public abstract initPayType()V
.end method

.method public abstract initSaleAndPayAndBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract initSaleType()V
.end method

.method public abstract initSmallType()V
.end method

.method public abstract queryGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

.method public abstract queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
