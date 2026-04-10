.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;
.super Ljava/lang/Object;
.source "QuerySellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->getSmallType(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;->notifySmallTypeChange()V

    return-void
.end method
