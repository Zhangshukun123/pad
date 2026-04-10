.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;
.super Ljava/lang/Object;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStoreList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showStoreData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
