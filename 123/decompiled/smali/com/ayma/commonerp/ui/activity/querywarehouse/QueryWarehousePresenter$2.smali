.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;
.super Ljava/lang/Object;
.source "QueryWarehousePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->getGoodsSmallType(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifySmallTypeChange()V

    return-void
.end method
