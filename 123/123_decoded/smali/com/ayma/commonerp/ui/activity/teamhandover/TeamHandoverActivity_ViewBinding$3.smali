.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TeamHandoverActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->onBtnQueryClick(Landroid/view/View;)V

    return-void
.end method
