.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivAdd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08067e
    .end annotation
.end field

.field ivReduce:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080680
    .end annotation
.end field

.field ivStockStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08068c
    .end annotation
.end field

.field rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08067d
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080688
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080689
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08068a
    .end annotation
.end field

.field tvStockCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080687
    .end annotation
.end field

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08068b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Landroid/view/View;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    .line 716
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 717
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
