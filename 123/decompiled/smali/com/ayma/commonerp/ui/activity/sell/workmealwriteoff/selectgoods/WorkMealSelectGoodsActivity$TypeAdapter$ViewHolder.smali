.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WorkMealSelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

.field tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080798
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;Landroid/view/View;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    .line 286
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 287
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
