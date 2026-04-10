.class public Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MultiplexUpdatePresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/update/IMultiplexUpdatePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        ">",
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "TT;",
        "Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;",
        ">;",
        "Lcom/ayma/commonerp/multiplex/update/IMultiplexUpdatePresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method


# virtual methods
.method public checkUpdate(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/UpdateInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "appType"

    const-string v2, "0"

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;

    invoke-virtual {v1, v0, p1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;->getAppVersion(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->initModel()Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;
    .locals 2

    .line 25
    new-instance v0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdatePresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/update/MultiplexUpdateModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
