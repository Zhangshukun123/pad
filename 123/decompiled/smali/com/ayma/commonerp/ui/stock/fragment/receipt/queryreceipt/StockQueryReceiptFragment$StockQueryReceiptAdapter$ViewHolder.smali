.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StockQueryReceiptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field llToTrain:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080506
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

.field tvCommit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080507
    .end annotation
.end field

.field tvCreteDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080509
    .end annotation
.end field

.field tvDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08050a
    .end annotation
.end field

.field tvGoDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08051a
    .end annotation
.end field

.field tvReceiptStore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08050f
    .end annotation
.end field

.field tvReceptCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08050e
    .end annotation
.end field

.field tvReview:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080511
    .end annotation
.end field

.field tvRevoke:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080513
    .end annotation
.end field

.field tvStatue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080514
    .end annotation
.end field

.field tvToTrain:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080518
    .end annotation
.end field

.field tvToTrainDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080516
    .end annotation
.end field

.field tvTrainNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08051c
    .end annotation
.end field

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08051e
    .end annotation
.end field

.field tvUser:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080520
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Landroid/view/View;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    .line 695
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 696
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
