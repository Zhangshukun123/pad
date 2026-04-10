.class Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->clearDataSimple()V
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

    .line 422
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->access$6500(Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
