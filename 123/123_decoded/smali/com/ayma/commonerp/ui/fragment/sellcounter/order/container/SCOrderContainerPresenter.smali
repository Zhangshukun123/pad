.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SCOrderContainerPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerView;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerContact$ISCOrderContainerPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;->initModel()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerModel;
    .locals 2

    .line 14
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
