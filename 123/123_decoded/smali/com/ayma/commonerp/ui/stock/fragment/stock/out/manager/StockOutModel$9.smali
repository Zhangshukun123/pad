.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;
.super Ljava/lang/Object;
.source "StockOutModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->deletOutReceiptOnLine(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/base/mvp/ModelCallBack;I)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$position:I

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

    .line 667
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 648
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 652
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    if-nez p1, :cond_1

    .line 654
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$5900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 657
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 658
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 661
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 662
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
