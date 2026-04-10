.class Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->payOptionType(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;Z)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b0\u7248\u7ebf\u4e0a\u652f\u4ed8\u64cd\u4f5c\u5df2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->val$isShow:Z

    if-eqz v2, :cond_1

    const-string v2, "\u542f\u7528"

    goto :goto_0

    :cond_1
    const-string v2, "\u5173\u95ed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showToast(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$6;->val$isShow:Z

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showPayOptionType(Z)V

    return-void
.end method
