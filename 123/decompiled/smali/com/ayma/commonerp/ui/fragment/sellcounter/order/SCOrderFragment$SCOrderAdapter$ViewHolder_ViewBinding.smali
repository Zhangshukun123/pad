.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SCOrderFragment$SCOrderAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08064a

    const-string v2, "field \'tvOrderNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderNum:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08064c

    const-string v2, "field \'tvOrderTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderTime:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080646

    const-string v2, "field \'tvCustomerNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvCustomerNum:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080648

    const-string v2, "field \'tvGetFoodCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvGetFoodCode:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080642

    const-string v2, "field \'rvDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080643

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08064f

    const-string v2, "field \'tvStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08064e

    const-string v2, "field \'tvRefund\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderNum:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderTime:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvCustomerNum:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvGetFoodCode:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
