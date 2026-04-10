.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;
.super Ljava/lang/Object;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->downloadTrainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    return-void
.end method
