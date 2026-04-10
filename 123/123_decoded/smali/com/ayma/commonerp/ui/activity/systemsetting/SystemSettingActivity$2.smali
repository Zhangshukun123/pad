.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 200
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 204
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    const-string p2, "\u6b63\u5728\u626b\u63cf\u65e0\u7ebf\u7f51\u7edc"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->showLoading(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/util/WifiAdmin;->openWifi(Landroid/content/Context;)V

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->access$100(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/util/WifiAdmin;->closeWifi(Landroid/content/Context;)V

    .line 214
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
