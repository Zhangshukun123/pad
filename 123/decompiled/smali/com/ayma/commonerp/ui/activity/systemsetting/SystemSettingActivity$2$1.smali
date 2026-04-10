.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2$1;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->checkLocationPermission()V

    return-void
.end method
