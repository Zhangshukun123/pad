.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;
.super Ljava/lang/Object;
.source "GoodsOptionPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->updateOnlineQty(DLcom/ayma/commonerp/bean/GoodsOptionBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

.field final synthetic val$newQty:D

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;Lcom/ayma/commonerp/bean/GoodsOptionBean;DI)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

    iput-wide p3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$newQty:D

    iput p5, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->hideLoading()V

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->showUpdateResult(ZLjava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->hideLoading()V

    .line 124
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

    iget-wide v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$newQty:D

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->setDownQty(D)V

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->val$position:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->notifyItemChange(I)V

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->showUpdateResult(ZLjava/lang/String;)V

    return-void
.end method
