.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;
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

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

.field tvBirthday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044e
    .end annotation
.end field

.field tvCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08044f
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080450
    .end annotation
.end field

.field tvPosition:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080451
    .end annotation
.end field

.field tvQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080452
    .end annotation
.end field

.field tvStockQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080453
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;Landroid/view/View;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    .line 1792
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1793
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
