.class public interface abstract Lcom/ayma/commonerp/ui/activity/teamhandover/ITeamHandoverModel;
.super Ljava/lang/Object;
.source "ITeamHandoverModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract addTrainStock(Ljava/util/List;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract calculateSelectedCountAndAmount()V
.end method

.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract checkCanHandover()Z
.end method

.method public abstract checkCanHandover(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract clearData(Z)V
.end method

.method public abstract commitTeamHandoverData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract generateBillDetail(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGoodsIdByCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;
.end method

.method public abstract getGoodsStock(Ljava/lang/String;)D
.end method

.method public abstract queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryTrainId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract resetSelect(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract selectAll(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract selectData(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZLcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract selectReverse(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/mvp/ModelCallBack;)V
.end method
