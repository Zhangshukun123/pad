.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SystemSettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->onBtnConnect(Landroid/view/View;)V

    return-void
.end method
