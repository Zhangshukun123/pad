.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

.field final synthetic val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;Ljava/util/List;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->val$data:Ljava/util/List;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->val$data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 156
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-boolean v4, v4, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->val$isFilter:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v4, v4, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$1000(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v7, v7, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->val$priceType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 160
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 164
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostShuilv()D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 165
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice()D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    .line 166
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice0()D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    .line 167
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getStoreType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStoreType(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    if-nez v6, :cond_3

    .line 175
    new-instance v12, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const-wide/16 v8, 0x0

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;-><init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;DD)V

    .line 176
    invoke-virtual {v0, v5, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    .line 180
    invoke-virtual {v6, v7, v8}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setStock(D)V

    .line 181
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_1

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 187
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v4, v4, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 188
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 189
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    .line 190
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    .line 191
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_2

    .line 195
    :cond_7
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 197
    :cond_8
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 199
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->this$1:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$2$2;->val$body:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
