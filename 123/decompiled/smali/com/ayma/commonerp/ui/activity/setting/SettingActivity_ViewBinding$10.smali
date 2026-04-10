.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;->val$target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity_ViewBinding$10;->val$target:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->onBtnWifiManagerClick(Landroid/view/View;)V

    return-void
.end method
