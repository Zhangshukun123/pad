.class public interface abstract Lcom/ayma/commonerp/base/IBaseModel;
.super Ljava/lang/Object;
.source "IBaseModel.java"

# interfaces
.implements Lcom/ayma/base/mvp/IMvpBaseModel;


# virtual methods
.method public abstract callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/String;)V
.end method

.method public abstract callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V
.end method

.method public abstract callBackFailSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V
.end method

.method public abstract callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract decryptStr(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract downloadTeamSaleOutList(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
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

.method public abstract encryptRequestParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchToken(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract generateOrderNo()Ljava/lang/String;
.end method

.method public abstract generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation
.end method

.method public abstract generateRequestBody2(Ljava/util/TreeMap;)Lokhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation
.end method

.method public abstract getGoDate()Ljava/lang/String;
.end method

.method public abstract getLoginStatue()Z
.end method

.method public abstract getSign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract initHandler()V
.end method

.method public abstract initToken()V
.end method

.method public abstract isLoginInvalid(J)Z
.end method

.method public abstract map2Json(Ljava/util/TreeMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract map2Json2(Ljava/util/TreeMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/PermissionBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveTeamSaleOutListData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMsg(ILjava/lang/Object;)V
.end method

.method public abstract sendMsg(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ayma/commonerp/behavior/ComparatorBehavior;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateLoginStatue(Z)V
.end method
