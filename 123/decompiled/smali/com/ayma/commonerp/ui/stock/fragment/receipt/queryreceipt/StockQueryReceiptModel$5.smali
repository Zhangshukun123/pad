.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;
.super Ljava/lang/Object;
.source "StockQueryReceiptModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;->queryTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$train:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->val$train:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "%"

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "trainName like ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->val$train:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->limit(I)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/StockTrainItem;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/StockTrainItem;

    .line 393
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;->access$2800(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StockTrainItem;->getTrainName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;->access$2900(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/StockTrainItem;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;->access$3000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 403
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;->access$3200(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptModel$5;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
