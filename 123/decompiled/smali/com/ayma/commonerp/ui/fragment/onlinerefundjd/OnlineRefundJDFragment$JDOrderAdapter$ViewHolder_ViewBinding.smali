.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "OnlineRefundJDFragment$JDOrderAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080763

    const-string v2, "field \'tvOrderCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080778

    const-string v2, "field \'tvRefund\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080764

    const-string v2, "field \'tvOrderDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080760

    const-string v2, "field \'tvOrderAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08076d

    const-string v2, "field \'tvOrderRefundState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderRefundState:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08076b

    const-string v2, "field \'tvOrderPayChannel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080766

    const-string v2, "field \'tvOrderDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDetail:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderRefundState:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDetail:Landroid/widget/TextView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
