.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;
.super Ljava/lang/Object;
.source "StockMenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->downloadStockOutTemp()V
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

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->hideLoading()V

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;

    const-string v1, "\u5df2\u4e0b\u8f7d\u5546\u54c1\u51fa\u5e93\u6a21\u677f\u6570\u636e"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuContact$IStockMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method
