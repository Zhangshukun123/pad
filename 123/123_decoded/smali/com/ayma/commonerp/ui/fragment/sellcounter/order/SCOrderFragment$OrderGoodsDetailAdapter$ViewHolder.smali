.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SCOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;

.field tvAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08063f
    .end annotation
.end field

.field tvGoods:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080641
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;

    .line 380
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 381
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
