.class public Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PayGoodsAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    .line 22
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804b6

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804b7

    const-string v2, "field \'tvGoodsPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804b5

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804b4

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804b8

    const-string v2, "field \'tvSaleType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvSaleType:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;

    .line 37
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/adapter/PayGoodsAdapter$ViewHolder;->tvSaleType:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
