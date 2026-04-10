.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "InvoicingActivity$InvoicingDetailAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080449

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08044a

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08044b

    const-string v2, "field \'tvPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08044c

    const-string v2, "field \'tvQty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080448

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
