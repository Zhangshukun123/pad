.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;
.super Ljava/lang/Object;
.source "SellAnalysisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->showAmount(Lcom/ayma/commonerp/bean/SaleAnalysisAmount;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

.field final synthetic val$amountTips:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;->val$amountTips:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;->val$amountTips:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method
