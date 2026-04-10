.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnlineRefundJDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

.field tvOrderAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080760
    .end annotation
.end field

.field tvOrderCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080763
    .end annotation
.end field

.field tvOrderDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080764
    .end annotation
.end field

.field tvOrderDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080766
    .end annotation
.end field

.field tvOrderPayChannel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08076b
    .end annotation
.end field

.field tvOrderRefundState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08076d
    .end annotation
.end field

.field tvRefund:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080778
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;Landroid/view/View;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    .line 338
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 339
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
