.class Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SignOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;

.field tvOutDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08050c
    .end annotation
.end field

.field tvTrainNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08051c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
