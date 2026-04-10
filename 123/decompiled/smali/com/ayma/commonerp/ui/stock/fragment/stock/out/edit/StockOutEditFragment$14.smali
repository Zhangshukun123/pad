.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;
.super Ljava/lang/Object;
.source "StockOutEditFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->registerScanReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStockModel:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$14;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->addGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
