.class Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuerySellActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;
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

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08073b
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080744
    .end annotation
.end field

.field tvGoodsPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080746
    .end annotation
.end field

.field tvGoodsSumMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080736
    .end annotation
.end field

.field tvGoodsqty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08074a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;Landroid/view/View;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

    .line 341
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 342
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
