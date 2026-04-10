.class public Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "QueryOrderActivity$InvoicingAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080763

    const-string v2, "field \'tvOrderCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080764

    const-string v2, "field \'tvOrderDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080760

    const-string v2, "field \'tvOrderAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08076b

    const-string v2, "field \'tvOrderPayChannel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08076e

    const-string v2, "field \'tvOrderTrainName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderTrainName:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08072c

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08045a

    const-string v2, "field \'llTable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->llTable:Landroid/widget/LinearLayout;

    .line 32
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f080121

    const-string v2, "field \'cl12306\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08012f

    const-string v2, "field \'tvSeat\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08012b

    const-string v2, "field \'tvContacts\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvOrderTrainName:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->llTable:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
