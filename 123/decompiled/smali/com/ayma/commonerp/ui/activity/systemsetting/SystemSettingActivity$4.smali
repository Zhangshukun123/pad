.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->access$200(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->dealScanResult(Ljava/lang/String;)V

    return-void
.end method
