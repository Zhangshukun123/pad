.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

.field tvRoadDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08077b
    .end annotation
.end field

.field tvTeamName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08078f
    .end annotation
.end field

.field tvTrainNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080796
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;Landroid/view/View;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    .line 723
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 724
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
