.class public abstract Lcom/ayma/commonerp/base/BasePresenter;
.super Lcom/ayma/base/mvp/MvpBasePresenter;
.source "BasePresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        "T:",
        "Lcom/ayma/commonerp/base/BaseModel;",
        ">",
        "Lcom/ayma/base/mvp/MvpBasePresenter<",
        "TV;TT;>;",
        "Lcom/ayma/commonerp/base/IBasePresenter;"
    }
.end annotation


# instance fields
.field protected dealingOption:Z

.field protected final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ayma/base/mvp/MvpBasePresenter;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/base/BasePresenter;->object:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/ayma/commonerp/base/BasePresenter;->dealingOption:Z

    return-void
.end method


# virtual methods
.method public fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 2
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

    .line 65
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/BasePresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/base/IBaseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/base/IBaseView;->getPermissionCode()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 71
    iget-object p1, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/base/BaseModel;

    const-string p2, "\u9875\u9762\u6743\u9650\u7f16\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 75
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    .line 77
    iget-object p1, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/base/BaseModel;

    const-string p2, "\u6309\u94ae\u7f16\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseModel;->fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getGoDate()Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    const-string v1, "/"

    .line 28
    :try_start_0
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 30
    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BaseModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needLogin()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/base/IBaseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/base/IBaseView;->finishAll()V

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/base/IBaseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/base/IBaseView;->needLogin()V

    return-void
.end method

.method public queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
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

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseModel;->queryPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public sortList(IZLandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateLoginStatue(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/base/BasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/base/BaseModel;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseModel;->updateLoginStatue(Z)V

    return-void
.end method
