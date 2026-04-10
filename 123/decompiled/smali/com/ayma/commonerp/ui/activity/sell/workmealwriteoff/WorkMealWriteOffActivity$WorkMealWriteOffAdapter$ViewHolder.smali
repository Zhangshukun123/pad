.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WorkMealWriteOffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnWriteOff:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08045f
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

.field tvCustomerTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080461
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080462
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080463
    .end annotation
.end field

.field tvPhone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080464
    .end annotation
.end field

.field tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080465
    .end annotation
.end field

.field tvWriteOffGoods:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080466
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;Landroid/view/View;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    .line 290
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 291
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
