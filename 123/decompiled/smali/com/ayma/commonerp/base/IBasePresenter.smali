.class public interface abstract Lcom/ayma/commonerp/base/IBasePresenter;
.super Ljava/lang/Object;
.source "IBasePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/IMvpBasePresenter;


# virtual methods
.method public abstract fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getGoDate()Ljava/lang/String;
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract needLogin()V
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

.method public abstract sortList(IZLandroid/view/View;)V
.end method

.method public abstract updateLoginStatue(Z)V
.end method
