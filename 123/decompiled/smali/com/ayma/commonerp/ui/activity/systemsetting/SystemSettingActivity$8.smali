.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/WifiAdmin$ScanCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->scanWifi()V
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

    .line 332
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/Throwable;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->hideLoading()V

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showToast(Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/util/WifiAdmin;->checkState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v2}, Lcom/ayma/commonerp/util/WifiAdmin;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "\u5df2\u8fde\u63a5\u81f3\uff1a%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->hideLoading()V

    .line 337
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->notifyListChange(Ljava/util/List;)V

    .line 338
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/util/WifiAdmin;->checkState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    invoke-virtual {v2}, Lcom/ayma/commonerp/util/WifiAdmin;->getWifiSSID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "\u5df2\u8fde\u63a5\u81f3\uff1a%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
