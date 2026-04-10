.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;
.super Ljava/lang/Object;
.source "QueryWarehouseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel$1$2;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
