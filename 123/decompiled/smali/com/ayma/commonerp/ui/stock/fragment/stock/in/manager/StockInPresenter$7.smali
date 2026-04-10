.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;
.super Ljava/lang/Object;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->uploadReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

.field final synthetic val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 364
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->hideLoading()V

    .line 352
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const-string v1, "\u4e0a\u4f20\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showToast(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->val$i:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;IZ)V

    .line 355
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->uploadSuccess()V

    return-void
.end method
