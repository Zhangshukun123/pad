.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;
.super Ljava/lang/Object;
.source "StockReceiptDetailModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->editGoodsCount(Ljava/util/TreeMap;IDLcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$editCount:D

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lcom/ayma/base/mvp/ModelCallBack;ID)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$position:I

    iput-wide p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$editCount:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 86
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 96
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;

    .line 97
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$editCount:D

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->setQty(D)V

    .line 98
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$editCount:D

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->getUnitPrice()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;->setTotalPrice(D)V

    .line 99
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->calculateAmount()V

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 103
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
