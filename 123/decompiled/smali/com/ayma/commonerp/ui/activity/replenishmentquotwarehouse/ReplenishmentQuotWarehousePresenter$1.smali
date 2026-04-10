.class Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehousePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->initBaseData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$600(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$700(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->hideLoading()V

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$900(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->hideLoading()V

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$000(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$102(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;Z)Z

    .line 88
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->initHandler()V

    .line 89
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$200(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->hideLoading()V

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$400(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$300(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->access$500(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseContact$IReplenishmentQuotWarehouseView;->setCanAddForOtherTrain(Z)V

    .line 92
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->getStoreList(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter$1;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
