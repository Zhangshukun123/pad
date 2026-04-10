.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SellAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

.field tvGoodsAdd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080522
    .end annotation
.end field

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080523
    .end annotation
.end field

.field tvGoodsGoodsSale:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080524
    .end annotation
.end field

.field tvGoodsIn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080526
    .end annotation
.end field

.field tvGoodsLost:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080527
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080528
    .end annotation
.end field

.field tvGoodsOut:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080529
    .end annotation
.end field

.field tvGoodsOutStock:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08052a
    .end annotation
.end field

.field tvGoodsReturn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08052b
    .end annotation
.end field

.field tvGoodsSale12306:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080525
    .end annotation
.end field

.field tvGoodsScrap:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08052c
    .end annotation
.end field

.field tvGoodsTranStock:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08052d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;Landroid/view/View;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    .line 469
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 470
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
