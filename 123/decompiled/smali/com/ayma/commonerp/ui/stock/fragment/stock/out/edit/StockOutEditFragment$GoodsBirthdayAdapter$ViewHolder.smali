.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StockOutEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;
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

.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;

.field tvBirthday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08054b
    .end annotation
.end field

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08054c
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08054d
    .end annotation
.end field

.field tvQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08054e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;Landroid/view/View;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;

    .line 1384
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1385
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
