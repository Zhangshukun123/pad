.class public interface abstract Lcom/ayma/commonerp/ui/activity/querysell/IQuerySellModel;
.super Ljava/lang/Object;
.source "IQuerySellModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract clearData()V
.end method

.method public abstract getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
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

.method public abstract queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract querySaleData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
