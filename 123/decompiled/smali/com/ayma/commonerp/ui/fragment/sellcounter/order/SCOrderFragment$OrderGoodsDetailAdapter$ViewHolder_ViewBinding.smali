.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080641

    const-string v2, "field \'tvGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08063f

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    .line 33
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
