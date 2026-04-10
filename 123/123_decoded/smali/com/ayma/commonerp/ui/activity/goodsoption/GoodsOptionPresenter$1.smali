.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;
.super Ljava/lang/Object;
.source "GoodsOptionPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->fetchGoodsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->hideLoading()V

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->hideLoading()V

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->getGoodsOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->notifyGoodsList(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionModel;->getSmallTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionView;->notifySmallTypeList(Ljava/util/List;)V

    return-void
.end method
