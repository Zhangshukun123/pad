.class public Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MultiplexConfigPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/config/IMultiplexConfigPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        ">",
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "TT;",
        "Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;",
        ">;",
        "Lcom/ayma/commonerp/multiplex/config/IMultiplexConfigPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
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

    .line 16
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->initModel()Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;
    .locals 2

    .line 23
    new-instance v0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public saveConfig(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/base/IBaseView;

    const-string p2, "\u8bf7\u68c0\u67e5IP\u5730\u5740\u683c\u5f0f\u662f\u5426\u6b63\u786e"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/base/IBaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ayma/commonerp/multiplex/config/MultiplexConfigModel;->saveConfig(Ljava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
