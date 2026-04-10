.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

.field final synthetic val$result:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;->val$result:Landroid/net/wifi/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;->val$result:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->inputWifiPwd(Landroid/net/wifi/ScanResult;)V

    return-void
.end method
