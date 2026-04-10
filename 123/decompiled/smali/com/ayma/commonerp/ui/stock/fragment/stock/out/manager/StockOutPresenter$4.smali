.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;
.super Ljava/lang/Object;
.source "StockOutPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->getStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/util/List<",
        "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

.field final synthetic val$refresh:Z

.field final synthetic val$toast:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;ZZ)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->val$toast:Z

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2702(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Z)Z

    .line 255
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 258
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->notifyListChange(Ljava/util/List;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getPage()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2402(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)I

    .line 233
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2702(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Z)Z

    .line 234
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 235
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->getPage()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2402(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;I)I

    .line 236
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    const-string v0, "\u5df2\u52a0\u8f7d\u5168\u90e8\u6570\u636e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showToast(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$2702(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;Z)Z

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->hideLoading()V

    .line 242
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->val$toast:Z

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->val$refresh:Z

    if-eqz v1, :cond_2

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    goto :goto_0

    :cond_2
    const-string v1, "\u52a0\u8f7d\u6210\u529f"

    :goto_0
    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->showToast(Ljava/lang/String;)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->notifyListChange(Ljava/util/List;)V

    .line 246
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;->getDataSuccess()V

    return-void
.end method
