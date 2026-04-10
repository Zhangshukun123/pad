.class Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadBaseData(Z)V
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

    .line 275
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->hideLoading()V

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter$5;->this$0:Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;

    const-string v1, "\u57fa\u7840\u5b57\u5178\u8d44\u6599\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;->showToast(Ljava/lang/String;)V

    return-void
.end method
