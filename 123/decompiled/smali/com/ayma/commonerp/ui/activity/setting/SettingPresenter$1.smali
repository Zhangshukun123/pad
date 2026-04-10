.class Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->onCreate()V
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

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;->showDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
