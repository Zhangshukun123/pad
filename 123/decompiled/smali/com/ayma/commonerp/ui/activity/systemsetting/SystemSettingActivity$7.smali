.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->lambda$checkLocationPermission$0(Lcom/tbruyelle/rxpermissions2/Permission;)V
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

    .line 313
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 316
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 317
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 318
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 320
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
