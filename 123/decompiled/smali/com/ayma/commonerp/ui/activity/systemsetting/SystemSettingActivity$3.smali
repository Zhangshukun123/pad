.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 224
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v2}, Lcom/ayma/commonerp/util/WifiAdmin;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u5df2\u8fde\u63a5\uff1a%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
