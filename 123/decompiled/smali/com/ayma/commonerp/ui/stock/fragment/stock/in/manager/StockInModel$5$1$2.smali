.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;
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


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$2;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    const-string v2, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
