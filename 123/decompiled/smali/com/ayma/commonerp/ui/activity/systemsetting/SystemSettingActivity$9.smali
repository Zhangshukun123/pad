.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->dealScanResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

.field final synthetic val$netWorkName:Ljava/lang/String;

.field final synthetic val$netWorkType:Ljava/lang/String;

.field final synthetic val$passWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$netWorkType:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$netWorkName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$passWord:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$netWorkType:Ljava/lang/String;

    const-string p2, "wpa"

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$netWorkType:Ljava/lang/String;

    const-string p2, "wep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x12

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    .line 405
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$netWorkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$9;->val$passWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/util/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
