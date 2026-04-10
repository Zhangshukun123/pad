.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->uploadSuccess(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "billNo=?"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v3

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1212
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getBillNo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1215
    const-class v6, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v3

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 1216
    const-class v6, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v3

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$6600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1228
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$6800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$11;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method
