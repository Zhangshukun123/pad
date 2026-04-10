.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2$1;
.super Ljava/lang/Object;
.source "OnlineRefundSimpleModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->access$900(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)V

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->access$300(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->getOrderDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;

    .line 97
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "-"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getQty()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;->access$1000(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->updateStock(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
