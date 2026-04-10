.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "StockOutEditFragment$TrainAllAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08054f

    const-string v2, "field \'tvTrain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;->tvTrain:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;

    .line 34
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;->tvTrain:Landroid/widget/TextView;

    .line 35
    iput-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$TrainAllAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
