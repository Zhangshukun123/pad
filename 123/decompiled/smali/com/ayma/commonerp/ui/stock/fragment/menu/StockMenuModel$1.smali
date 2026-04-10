.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;
.super Ljava/lang/Object;
.source "StockMenuModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->downLoadStockOutTemp(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 107
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 45
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 50
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 51
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 54
    :cond_1
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V

    invoke-static {p2}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
