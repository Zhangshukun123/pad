.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;
.super Ljava/lang/Object;
.source "QueryWarehouseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

.field final synthetic val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->mergeWarehouse()V

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->access$700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$2;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
