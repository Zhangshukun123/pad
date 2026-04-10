.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "GoodsOptionActivity$GoodsOptionAdapter$viewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804d5

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804d4

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804d7

    const-string v2, "field \'tvQty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvQty:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804d6

    const-string v2, "field \'tvGoodsOption\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsOption:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804db

    const-string v2, "field \'tvTypeName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0804d9

    const-string v2, "field \'tvStockQty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvStockQty:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    .line 37
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvQty:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsOption:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvStockQty:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
