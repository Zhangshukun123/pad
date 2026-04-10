.class public interface abstract Lcom/ayma/commonerp/ui/activity/querywarehouse/IQueryWarehouseModel;
.super Ljava/lang/Object;
.source "IQueryWarehouseModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract calculateTotalCountAndPrice()V
.end method

.method public abstract clearData()V
.end method

.method public abstract getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTotalCount()D
.end method

.method public abstract getTotalPrice()Ljava/lang/String;
.end method

.method public abstract initSmallType()V
.end method

.method public abstract mergeWarehouse()V
.end method

.method public abstract queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryWarehouseGoods(Ljava/util/TreeMap;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
