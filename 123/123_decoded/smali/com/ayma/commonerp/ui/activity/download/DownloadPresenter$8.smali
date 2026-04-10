.class Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadTeamData(Z)V
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

    .line 391
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 407
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 398
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$4500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u73ed\u7ec4\u8d44\u6599\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    return-void
.end method
