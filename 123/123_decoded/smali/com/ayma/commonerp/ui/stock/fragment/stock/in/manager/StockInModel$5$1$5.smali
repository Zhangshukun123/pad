.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

.field final synthetic val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$5;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
