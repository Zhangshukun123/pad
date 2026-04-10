.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804e9

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804ed

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804eb

    const-string v2, "field \'tvGoodsCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804ef

    const-string v2, "field \'tvGoodsPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804f1

    const-string v2, "field \'tvGoodsSubtotal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsSubtotal:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0802b3

    const-string v2, "field \'cbSelect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsSubtotal:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
