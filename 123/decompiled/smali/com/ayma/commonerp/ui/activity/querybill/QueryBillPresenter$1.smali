.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;
.super Ljava/lang/Object;
.source "QueryBillPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->getGoodsBigType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->hideLoading()V

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->hideLoading()V

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->hideLoading()V

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->notifyBigTypeChange()V

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;->notifySmallTypeChange()V

    return-void
.end method
