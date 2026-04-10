.class public interface abstract Lcom/ayma/commonerp/ui/activity/onlinepay/IOnlinePayModel;
.super Ljava/lang/Object;
.source "IOnlinePayModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract cancelPayQueryRequest(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract cashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearRequest()V
.end method

.method public abstract getIsShowInvoicing()Z
.end method

.method public abstract getPayTypeId(Ljava/lang/String;)Ljava/lang/String;
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
            "Lcom/ayma/commonerp/bean/PayResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryCashToOnline(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

.method public abstract queryPayType(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract saveGoodsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateStock()V
.end method
