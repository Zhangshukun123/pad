.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Sell12306Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;
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

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;

.field tvAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08049a
    .end annotation
.end field

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08049b
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08049c
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08049d
    .end annotation
.end field

.field tvQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08049e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;

    .line 396
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 397
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
