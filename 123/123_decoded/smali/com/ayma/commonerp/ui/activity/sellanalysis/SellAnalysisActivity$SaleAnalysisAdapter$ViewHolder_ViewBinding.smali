.class public Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080523

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080528

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080522

    const-string v2, "field \'tvGoodsAdd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsAdd:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080526

    const-string v2, "field \'tvGoodsIn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsIn:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08052a

    const-string v2, "field \'tvGoodsOutStock\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOutStock:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08052b

    const-string v2, "field \'tvGoodsReturn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsReturn:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08052c

    const-string v2, "field \'tvGoodsScrap\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsScrap:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080524

    const-string v2, "field \'tvGoodsGoodsSale\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsGoodsSale:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080529

    const-string v2, "field \'tvGoodsOut\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOut:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08052d

    const-string v2, "field \'tvGoodsTranStock\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsTranStock:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080527

    const-string v2, "field \'tvGoodsLost\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsLost:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080525

    const-string v2, "field \'tvGoodsSale12306\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsSale12306:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsAdd:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsIn:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOutStock:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsReturn:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsScrap:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsGoodsSale:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOut:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsTranStock:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsLost:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsSale12306:Landroid/widget/TextView;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
