.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;
.super Ljava/lang/Object;
.source "QuerySellDetailPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->getSmallType(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->notifySmallTypeChange()V

    return-void
.end method
