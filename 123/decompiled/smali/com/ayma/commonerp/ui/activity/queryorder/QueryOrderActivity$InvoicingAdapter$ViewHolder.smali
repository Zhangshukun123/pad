.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QueryOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080121
    .end annotation
.end field

.field llTable:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08045a
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

.field tvContacts:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08012b
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08072c
    .end annotation
.end field

.field tvOrderAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080760
    .end annotation
.end field

.field tvOrderCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080763
    .end annotation
.end field

.field tvOrderDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080764
    .end annotation
.end field

.field tvOrderPayChannel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08076b
    .end annotation
.end field

.field tvOrderTrainName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08076e
    .end annotation
.end field

.field tvSeat:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08012f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;Landroid/view/View;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    .line 420
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 421
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
