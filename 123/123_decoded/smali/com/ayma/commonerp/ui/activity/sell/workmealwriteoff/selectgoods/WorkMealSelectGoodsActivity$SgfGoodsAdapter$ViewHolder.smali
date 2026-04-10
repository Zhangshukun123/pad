.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WorkMealSelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cbSelect:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08045c
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08045d
    .end annotation
.end field

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08045e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;Landroid/view/View;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;

    .line 393
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 394
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
