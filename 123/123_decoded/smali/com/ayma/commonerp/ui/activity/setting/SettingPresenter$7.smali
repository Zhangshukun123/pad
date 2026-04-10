.class Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->boundMachine(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 247
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 260
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 268
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->hideLoading()V

    .line 252
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
