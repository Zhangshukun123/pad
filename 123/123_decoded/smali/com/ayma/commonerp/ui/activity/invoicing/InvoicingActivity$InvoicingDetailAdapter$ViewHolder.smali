.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InvoicingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;

.field tvAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080448
    .end annotation
.end field

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080449
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044a
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044b
    .end annotation
.end field

.field tvQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;

    .line 709
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 710
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
