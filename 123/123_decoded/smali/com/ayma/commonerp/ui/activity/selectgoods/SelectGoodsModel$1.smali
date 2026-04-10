.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;
.super Ljava/lang/Object;
.source "SelectGoodsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$outDay:Ljava/lang/String;

.field final synthetic val$priceType:Ljava/lang/String;

.field final synthetic val$saleChannel:Ljava/lang/String;

.field final synthetic val$sellType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$priceType:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$outDay:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$saleChannel:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$sellType:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)V

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$priceType:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$outDay:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$saleChannel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryCanSellGoodsWithOutDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 68
    new-instance v4, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-direct {v4}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;-><init>()V

    .line 69
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setGoodsTypeName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->val$sellType:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsBean2SellDetail(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)Lcom/ayma/commonerp/bean/SellDetailBean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 76
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 79
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 81
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v5}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 84
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    goto :goto_2

    .line 89
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 95
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 96
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SellDetailBean;->getStockCount()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_6

    .line 97
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 103
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 107
    :cond_8
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 108
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 110
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->access$600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void
.end method
