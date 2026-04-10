.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;
.super Ljava/lang/Object;
.source "Sell12306Presenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->query12306Data(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/util/List<",
        "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$400(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$500(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->hideLoading()V

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$600(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u63d0\u793a"

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$000(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$100(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->hideLoading()V

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$200(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->showToast(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$300(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->notifyListDataChange(Ljava/util/List;)V

    return-void
.end method
