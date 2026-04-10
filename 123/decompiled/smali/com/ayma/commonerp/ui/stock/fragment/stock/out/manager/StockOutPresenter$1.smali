.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;
.super Ljava/lang/Object;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->getStoreData()V
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

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 74
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$1300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;)V

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStoreDataNoOnline(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 57
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getStoreList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showStoreData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
