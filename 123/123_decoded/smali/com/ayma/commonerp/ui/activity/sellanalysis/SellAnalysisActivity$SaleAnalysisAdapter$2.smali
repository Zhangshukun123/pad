.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;
.super Ljava/lang/Object;
.source "SellAnalysisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/SaleAnalysisBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;Lcom/ayma/commonerp/bean/SaleAnalysisBean;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->isCorrect()Z

    move-result p1

    if-nez p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s \u5dee\u5f02\uff1a%s\n\u8bf7\u8054\u7cfb\u5e93\u623f\u5904\u7406"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
