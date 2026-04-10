.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/sell/ISellModel;
.super Ljava/lang/Object;
.source "ISellModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract addGoods(Ljava/util/List;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;Z",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract canOnlinePay()Z
.end method

.method public abstract cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract clearAllGoods(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract clearRequest()V
.end method

.method public abstract commitGoodsByList(Ljava/lang/String;Ljava/lang/String;DLcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract deleteGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract generateSaleGoods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OnlinePayJsonBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generateSaleGoodsPayJson()Ljava/lang/String;
.end method

.method public abstract getSaleTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSellData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalCount()D
.end method

.method public abstract getTotalPrice()D
.end method

.method public abstract pay(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryGoodsCompany(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateStock()V
.end method

.method public abstract verifyPickUpData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
