.class Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadUserData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u7528\u6237\u8d44\u6599\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    :cond_0
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u4e0b\u8f7d\u7528\u6237\u8d44\u6599\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    :cond_0
    return-void
.end method
