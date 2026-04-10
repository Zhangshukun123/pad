.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;
.super Ljava/lang/Object;
.source "StockMenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2700(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2600(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u57fa\u7840\u8d44\u6599\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method
