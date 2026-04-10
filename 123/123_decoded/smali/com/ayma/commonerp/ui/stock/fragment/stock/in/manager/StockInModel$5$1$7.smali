.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;
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

    .line 338
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1$7;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
