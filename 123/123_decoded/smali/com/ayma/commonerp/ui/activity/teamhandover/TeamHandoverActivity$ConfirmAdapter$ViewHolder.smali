.class public Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TeamHandoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field cbSelect:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804b0
    .end annotation
.end field

.field root:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;

.field public tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804b1
    .end annotation
.end field

.field public tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804b2
    .end annotation
.end field

.field public tvHandoverNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0804b3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;Landroid/view/View;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;

    .line 803
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 804
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
