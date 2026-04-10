.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SCOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field rvDetail:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080642
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

.field tvAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080643
    .end annotation
.end field

.field tvCustomerNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080646
    .end annotation
.end field

.field tvGetFoodCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080648
    .end annotation
.end field

.field tvOrderNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08064a
    .end annotation
.end field

.field tvOrderTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08064c
    .end annotation
.end field

.field tvRefund:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08064e
    .end annotation
.end field

.field tvStatue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08064f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;Landroid/view/View;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;

    .line 336
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 337
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
