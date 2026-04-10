.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StockInEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;
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

.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;

.field tvCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080726
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08075c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;

    .line 1146
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1147
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
