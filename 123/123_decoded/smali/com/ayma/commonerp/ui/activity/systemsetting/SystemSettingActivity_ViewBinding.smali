.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SystemSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

.field private view7f080252:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    .line 34
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f080255

    const-string v2, "field \'seekBarLight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->seekBarLight:Landroid/widget/SeekBar;

    .line 35
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f080254

    const-string v2, "field \'sbAudio\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->sbAudio:Landroid/widget/SeekBar;

    .line 36
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f080257

    const-string v2, "field \'aSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->aSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 37
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0806c2

    const-string v2, "field \'rv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08078c

    const-string v2, "field \'tvConnection\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f080256

    const-string v2, "field \'srl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f080252

    const-string v1, "method \'onBtnConnect\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->view7f080252:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    .line 57
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->seekBarLight:Landroid/widget/SeekBar;

    .line 58
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->sbAudio:Landroid/widget/SeekBar;

    .line 59
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->aSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 60
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->tvConnection:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->view7f080252:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity_ViewBinding;->view7f080252:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
