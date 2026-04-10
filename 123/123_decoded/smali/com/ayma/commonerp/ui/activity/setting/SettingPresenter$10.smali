.class Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->clearData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$5900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 402
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v0, "\u9500\u552e\u6570\u636e\u6e05\u9664\u5931\u8d25"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 411
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v0, "\u9500\u552e\u6570\u636e\u6e05\u9664\u5931\u8d25"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$5600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$5700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 393
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$5800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u9500\u552e\u6570\u636e\u6e05\u9664\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void
.end method
