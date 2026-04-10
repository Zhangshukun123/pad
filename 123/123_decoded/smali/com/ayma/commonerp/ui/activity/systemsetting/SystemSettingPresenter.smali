.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "SystemSettingPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingView;",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;
    .locals 2

    .line 22
    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
