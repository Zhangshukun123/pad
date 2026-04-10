.class Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "QueryTeamPickupActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->onTvTotalCountClick(Landroid/view/View;)V

    return-void
.end method
