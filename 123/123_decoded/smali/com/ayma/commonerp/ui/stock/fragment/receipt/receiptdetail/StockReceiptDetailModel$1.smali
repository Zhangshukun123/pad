.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;
.super Ljava/lang/Object;
.source "StockReceiptDetailModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->fetchReceiptDetail(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 43
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 52
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 53
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 57
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;

    invoke-static {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$302(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Lcom/ayma/commonerp/bean/StockReceiptDetailBean;)Lcom/ayma/commonerp/bean/StockReceiptDetailBean;

    .line 59
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;)Lcom/ayma/commonerp/bean/StockReceiptDetailBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->getBillDetail()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->calculateAmount()V

    .line 61
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
