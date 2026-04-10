.class public interface abstract Lcom/ayma/commonerp/ui/activity/selectgoods/ISelectGoodsModel;
.super Ljava/lang/Object;
.source "ISelectGoodsModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract addSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V
.end method

.method public abstract clearAllSelectedGoods()V
.end method

.method public abstract completeSelectGoods(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectTotalCount()D
.end method

.method public abstract getSelectedGoods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedGoodsTotalPrice()D
.end method

.method public abstract goodsBean2SellDetail(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)Lcom/ayma/commonerp/bean/SellDetailBean;
.end method

.method public abstract queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract removeSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V
.end method

.method public abstract searchGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;>;)V"
        }
    .end annotation
.end method
