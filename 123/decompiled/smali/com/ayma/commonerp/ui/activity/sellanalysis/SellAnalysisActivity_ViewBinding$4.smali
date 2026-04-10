.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SellAnalysisActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->onTvGoodsSaleClick(Landroid/view/View;)V

    return-void
.end method
