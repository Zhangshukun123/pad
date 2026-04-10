.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SystemSettingModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/systemsetting/ISystemSettingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getScanWifiList(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 22
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
