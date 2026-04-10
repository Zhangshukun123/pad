.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SelectGoodsActivity$SgfGoodsAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08068b

    const-string v2, "field \'tvType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080689

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08068a

    const-string v2, "field \'tvPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080687

    const-string v2, "field \'tvStockCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvStockCount:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f08067e

    const-string v2, "field \'ivAdd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080688

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080680

    const-string v2, "field \'ivReduce\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivReduce:Landroid/widget/ImageView;

    .line 32
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08067d

    const-string v2, "field \'rlContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f08068c

    const-string v2, "field \'ivStockStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvStockCount:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivReduce:Landroid/widget/ImageView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
