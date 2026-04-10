.class Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->saveSignInStatue(Z)V
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

    .line 464
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 480
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u7b7e\u5230\u72b6\u6001\u5f02\u5e38\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5300(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 471
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$5500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u7b7e\u5230\u72b6\u6001\u5df2\u66f4\u65b0"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    return-void
.end method
