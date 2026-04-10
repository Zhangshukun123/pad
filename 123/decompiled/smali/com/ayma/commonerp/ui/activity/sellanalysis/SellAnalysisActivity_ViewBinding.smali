.class public Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SellAnalysisActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

.field private view7f0800e6:Landroid/view/View;

.field private view7f080227:Landroid/view/View;

.field private view7f08022a:Landroid/view/View;

.field private view7f08022b:Landroid/view/View;

.field private view7f080235:Landroid/view/View;

.field private view7f080246:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Landroid/view/View;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    .line 44
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080222

    const-string v2, "field \'spBigName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spBigName:Landroid/widget/Spinner;

    .line 45
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080224

    const-string v2, "field \'spSmallName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    .line 46
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08021d

    const-string v2, "field \'etGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    .line 47
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080220

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08021c

    const-string v2, "field \'clTable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08024d

    const-string v2, "field \'tvTips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTips:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080247

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvNoData:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080228

    const-string v2, "field \'tvAddAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddAmount:Landroid/widget/TextView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080230

    const-string v2, "field \'tvInAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInAmount:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08023a

    const-string v2, "field \'tvOutStockAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockAmount:Landroid/widget/TextView;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08023d

    const-string v2, "field \'tvReturnAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnAmount:Landroid/widget/TextView;

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080241

    const-string v2, "field \'tvScrappedAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedAmount:Landroid/widget/TextView;

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080232

    const-string v2, "field \'tvLostAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostAmount:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08022d

    const-string v2, "field \'tvSaleAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleAmount:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08023f

    const-string v2, "field \'tvSale12306Amount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Amount:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080237

    const-string v2, "field \'tvOutAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutAmount:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080244

    const-string v2, "field \'tvTrainStockAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockAmount:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080229

    const-string v2, "field \'tvAddCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddCount:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080231

    const-string v2, "field \'tvInCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInCount:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08023b

    const-string v2, "field \'tvOutStockCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockCount:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08023e

    const-string v2, "field \'tvReturnCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnCount:Landroid/widget/TextView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080242

    const-string v2, "field \'tvScrappedCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedCount:Landroid/widget/TextView;

    .line 66
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080233

    const-string v2, "field \'tvLostCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostCount:Landroid/widget/TextView;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08022e

    const-string v2, "field \'tvSaleCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleCount:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080240

    const-string v2, "field \'tvSale12306Count\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Count:Landroid/widget/TextView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080238

    const-string v2, "field \'tvOutCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutCount:Landroid/widget/TextView;

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080245

    const-string v2, "field \'tvTrainStockCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockCount:Landroid/widget/TextView;

    .line 71
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f080223

    const-string v2, "field \'spSellType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSellType:Landroid/widget/Spinner;

    const v0, 0x7f0800e6

    const-string v1, "method \'onBtnQueryClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022a

    const-string v1, "method \'onTvGoodsCodeClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022a:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080235

    const-string v1, "method \'onTvGoodsNameClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080235:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022b

    const-string v1, "method \'onTvGoodsSaleClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022b:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080246

    const-string v1, "method \'onTvTrainStockClick\'"

    .line 104
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080246:Landroid/view/View;

    .line 106
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080227

    const-string v1, "method \'onTvGoodsAddClick\'"

    .line 112
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 113
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080227:Landroid/view/View;

    .line 114
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    .line 129
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spBigName:Landroid/widget/Spinner;

    .line 130
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    .line 131
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    .line 132
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 134
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTips:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvNoData:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddAmount:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInAmount:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockAmount:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnAmount:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedAmount:Landroid/widget/TextView;

    .line 141
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostAmount:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleAmount:Landroid/widget/TextView;

    .line 143
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Amount:Landroid/widget/TextView;

    .line 144
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutAmount:Landroid/widget/TextView;

    .line 145
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockAmount:Landroid/widget/TextView;

    .line 146
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddCount:Landroid/widget/TextView;

    .line 147
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInCount:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockCount:Landroid/widget/TextView;

    .line 149
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnCount:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedCount:Landroid/widget/TextView;

    .line 151
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostCount:Landroid/widget/TextView;

    .line 152
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleCount:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Count:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutCount:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockCount:Landroid/widget/TextView;

    .line 156
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSellType:Landroid/widget/Spinner;

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022a:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080235:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080235:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f08022b:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080246:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080246:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080227:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;->view7f080227:Landroid/view/View;

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
