.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;
.super Ljava/lang/Object;
.source "StockMenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadSupplierData()V
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

    .line 139
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$1800(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$1900(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$2000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u4f9b\u5e94\u5546\u8d44\u6599\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method
