.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->inputWifiPwd(Landroid/net/wifi/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

.field final synthetic val$etPwd:Landroid/widget/EditText;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$etPwd:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$ssid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 453
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    .line 455
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    const-string p2, "\u5bc6\u7801\u81f3\u5c118\u4f4d"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 459
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$ssid:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v0}, Lcom/ayma/commonerp/util/WifiAdmin;->getNetworkId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/util/WifiAdmin;->disconnectWifi(I)V

    .line 462
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$11;->val$ssid:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/util/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
