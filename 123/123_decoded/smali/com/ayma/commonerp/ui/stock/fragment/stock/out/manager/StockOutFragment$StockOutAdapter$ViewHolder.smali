.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StockOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnCommit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047a
    .end annotation
.end field

.field btnRevoke:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047b
    .end annotation
.end field

.field btnUpload:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047c
    .end annotation
.end field

.field ivStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047d
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

.field tvEditOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047e
    .end annotation
.end field

.field tvEditOperatorHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08047f
    .end annotation
.end field

.field tvEditTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080480
    .end annotation
.end field

.field tvEditTimeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080481
    .end annotation
.end field

.field tvOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080488
    .end annotation
.end field

.field tvPostOperator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080482
    .end annotation
.end field

.field tvPostOperatorHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080483
    .end annotation
.end field

.field tvPostTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080484
    .end annotation
.end field

.field tvPostTimeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080485
    .end annotation
.end field

.field tvReceiptNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080486
    .end annotation
.end field

.field tvReceiptTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08048a
    .end annotation
.end field

.field tvTrain:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08048c
    .end annotation
.end field

.field tvTrainDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08048d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Landroid/view/View;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    .line 842
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 843
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
