.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 567
    :try_start_0
    invoke-static {}, Lorg/litepal/Operator;->beginTransaction()V

    .line 568
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->delete()I

    move-result v0

    .line 569
    const-class v1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "billno=?"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->val$head:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result v1

    if-ne v0, v4, :cond_0

    if-lez v1, :cond_0

    .line 571
    invoke-static {}, Lorg/litepal/Operator;->setTransactionSuccessful()V

    .line 572
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    return-void

    .line 580
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 588
    :try_start_2
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$6400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$10;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    :goto_0
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    return-void

    :goto_1
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    .line 597
    throw v0
.end method
