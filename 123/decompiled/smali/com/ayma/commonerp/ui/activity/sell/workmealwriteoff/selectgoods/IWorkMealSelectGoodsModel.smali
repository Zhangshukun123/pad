.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/IWorkMealSelectGoodsModel;
.super Ljava/lang/Object;
.source "IWorkMealSelectGoodsModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract getSelectGoods()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;
.end method

.method public abstract queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract searchGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
