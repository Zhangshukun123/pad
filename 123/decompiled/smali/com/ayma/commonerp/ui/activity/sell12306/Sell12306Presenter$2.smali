.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;
.super Ljava/lang/Object;
.source "Sell12306Presenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->commitData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1300(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1400(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->hideLoading()V

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1500(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->setCommitButtonEnable(Z)V

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1600(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$700(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$800(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->hideLoading()V

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$900(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->setCommitButtonEnable(Z)V

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/Sale12306DotEvent;

    invoke-direct {v1}, Lcom/ayma/commonerp/eventbus/Sale12306DotEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1100(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1000(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->notifyListDataChange(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1200(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    const-string v1, "\u63d0\u4ea4\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->showToast(Ljava/lang/String;)V

    return-void
.end method
