.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;
.super Ljava/lang/Object;
.source "Sell12306Presenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->selectOption(I)V
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

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$2000(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$2100(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1700(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1900(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->access$1800(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;->notifyListDataChange(Ljava/util/List;)V

    return-void
.end method
