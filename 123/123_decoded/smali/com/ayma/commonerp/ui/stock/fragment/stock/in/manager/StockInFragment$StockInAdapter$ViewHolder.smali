.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StockInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnCommit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080467
    .end annotation
.end field

.field btnRevoke:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080468
    .end annotation
.end field

.field btnUpload:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080469
    .end annotation
.end field

.field ivStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046a
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

.field tvEditOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046b
    .end annotation
.end field

.field tvEditOperatorHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046c
    .end annotation
.end field

.field tvEditTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046d
    .end annotation
.end field

.field tvEditTimeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046e
    .end annotation
.end field

.field tvOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080475
    .end annotation
.end field

.field tvPostOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08046f
    .end annotation
.end field

.field tvPostOperatorHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080470
    .end annotation
.end field

.field tvPostTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080471
    .end annotation
.end field

.field tvPostTimeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080472
    .end annotation
.end field

.field tvReceiptNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080473
    .end annotation
.end field

.field tvReceiptTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080477
    .end annotation
.end field

.field view:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080479
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Landroid/view/View;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    .line 707
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 708
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
