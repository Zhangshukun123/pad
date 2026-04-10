.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivAdd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080681
    .end annotation
.end field

.field ivReduce:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080682
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080684
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080685
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080686
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;Landroid/view/View;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    .line 803
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 805
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
