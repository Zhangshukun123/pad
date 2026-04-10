.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;
.super Ljava/lang/Object;
.source "StockOutEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getStoreList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditContact$IStockOutEditView;->showStoreData(Ljava/util/List;)V

    return-void
.end method
