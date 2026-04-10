.class public Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "QueryUnusualOrderPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderModel;
    .locals 2

    .line 15
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 21
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;->init()V

    return-void
.end method
