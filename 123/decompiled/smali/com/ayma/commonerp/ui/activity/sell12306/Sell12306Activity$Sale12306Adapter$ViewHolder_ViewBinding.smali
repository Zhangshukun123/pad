.class public Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "Sell12306Activity$Sale12306Adapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    .line 26
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804aa

    const-string v2, "field \'tvOrderNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804ac

    const-string v2, "field \'tvOrderDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804a6

    const-string v2, "field \'tvOldNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOldNo:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804ae

    const-string v2, "field \'tvServiceDay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvServiceDay:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804a8

    const-string v2, "field \'tvOrderAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804a4

    const-string v2, "field \'tvCustomerTrain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCustomerTrain:Landroid/widget/TextView;

    .line 33
    const-class v0, Lcom/ayma/commonerp/widget/MaxRecyclerView;

    const v1, 0x7f0804a0

    const-string v2, "field \'rvDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/widget/MaxRecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f08049f

    const-string v2, "field \'ivStatue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    .line 35
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f080499

    const-string v2, "field \'cbSelect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804a3

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOldNo:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvServiceDay:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCustomerTrain:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    .line 54
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    .line 55
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    .line 56
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
