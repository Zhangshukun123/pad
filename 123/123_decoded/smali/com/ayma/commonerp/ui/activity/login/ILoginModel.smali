.class public interface abstract Lcom/ayma/commonerp/ui/activity/login/ILoginModel;
.super Ljava/lang/Object;
.source "ILoginModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract getSearchCrossRoadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfo(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserInfoFromServer(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract loginFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryCrossRoadDataSize()I
.end method

.method public abstract queryGoodsDataSize()I
.end method

.method public abstract queryGoodsPriceDataSize()I
.end method

.method public abstract queryGoodsTypeDataSize()I
.end method

.method public abstract queryTrainDataSize()I
.end method

.method public abstract queryUser(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/UserDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryUserDataSize()I
.end method

.method public abstract saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchCrossRoad(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setNewStoreId(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
