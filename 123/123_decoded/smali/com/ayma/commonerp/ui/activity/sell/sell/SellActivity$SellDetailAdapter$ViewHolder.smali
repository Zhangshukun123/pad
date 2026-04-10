.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SellActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field clRoot:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

.field tvAllmoeys:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080627
    .end annotation
.end field

.field tvAllmoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080628
    .end annotation
.end field

.field tvAllnumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080629
    .end annotation
.end field

.field tvGoodsAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080626
    .end annotation
.end field

.field tvWareCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08062b
    .end annotation
.end field

.field tvWarenumbers:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08062a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 1745
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    .line 1746
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1747
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
