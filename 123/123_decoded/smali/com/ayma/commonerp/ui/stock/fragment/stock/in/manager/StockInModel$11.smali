.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchGoodsData(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/base/mvp/ModelCallBack;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 654
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 629
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 633
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 635
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 638
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 639
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 640
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;)V

    .line 641
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 640
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 642
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBillNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setBillNo(Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->setPostMark(Ljava/lang/String;)V

    .line 646
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 649
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
