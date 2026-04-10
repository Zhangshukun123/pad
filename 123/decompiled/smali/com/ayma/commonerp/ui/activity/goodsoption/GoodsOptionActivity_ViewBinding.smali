.class public Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GoodsOptionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    .line 28
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08006d

    const-string v2, "field \'etSearchGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080071

    const-string v2, "field \'rlvSmallType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvSmallType:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080072

    const-string v2, "field \'rlvGoods\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080073

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvSmallType:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->tvNoData:Landroid/widget/TextView;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
