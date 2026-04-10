.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InvoicingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080074
    .end annotation
.end field

.field llTable:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080446
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

.field tvContacts:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08007f
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08072c
    .end annotation
.end field

.field tvInvoicing:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080758
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

.field tvOrderInvoiceState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080767
    .end annotation
.end field

.field tvOrderPayChannel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08076b
    .end annotation
.end field

.field tvRefund:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044d
    .end annotation
.end field

.field tvSeat:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080084
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;Landroid/view/View;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    .line 642
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 643
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
