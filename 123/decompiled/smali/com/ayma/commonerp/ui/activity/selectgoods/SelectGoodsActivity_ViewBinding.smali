.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SelectGoodsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

.field private view7f080675:Landroid/view/View;

.field private view7f080677:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    .line 37
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080250

    const-string v2, "field \'rlvType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080678

    const-string v2, "field \'rlvGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08067b

    const-string v2, "field \'sgaTvGoodsCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsCount:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08067a

    const-string v2, "field \'sgaTvGoods1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoods1:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08067c

    const-string v2, "field \'sgaTvGoodsTotalPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsTotalPrice:Landroid/widget/TextView;

    const v0, 0x7f080675

    const-string v1, "field \'sgaBtnSubmit\' and method \'onBtnSubmitClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'sgaBtnSubmit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaBtnSubmit:Landroid/widget/Button;

    .line 44
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080675:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f080676

    const-string v2, "field \'sgaClBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaClBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08024f

    const-string v2, "field \'etSearchCondition\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    .line 53
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f080679

    const-string v2, "field \'srl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f080677

    const-string v1, "method \'onIvShopCarClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080677:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    .line 71
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvType:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsCount:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoods1:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaTvGoodsTotalPrice:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaBtnSubmit:Landroid/widget/Button;

    .line 77
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->sgaClBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    .line 79
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->srl:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 81
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080675:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080675:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080677:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity_ViewBinding;->view7f080677:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
