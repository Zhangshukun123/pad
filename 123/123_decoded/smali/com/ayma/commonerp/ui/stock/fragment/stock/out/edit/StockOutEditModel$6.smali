.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->addStockReceiptOutData(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "billNo=?"

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 475
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v2}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const-class v4, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v2, v4}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    .line 476
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 479
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    .line 480
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getTrainName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getTrainName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1002(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    .line 487
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 488
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 489
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$3900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 496
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$6;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
