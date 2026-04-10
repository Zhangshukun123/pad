.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "SystemSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;
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

    .line 562
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "connectivity"

    .line 566
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 567
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    .line 568
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "wifi"

    .line 569
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 570
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 571
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "\u5df2\u8fde\u63a5\uff1a%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    const-string p2, "\u8fde\u63a5\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
