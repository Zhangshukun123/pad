.class Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->queryGoodsDataByStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$priceType:Ljava/lang/String;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$storeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$storeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$priceType:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$outDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 346
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$1200(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$storeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$storeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$priceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$outDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsByStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    const-string v2, "\u65e0\u53ef\u9009\u62e9\u7684\u5546\u54c1"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$1300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 352
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 355
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v8

    .line 362
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    if-nez v4, :cond_1

    .line 365
    new-instance v10, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    const-wide/16 v6, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;-><init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;DD)V

    .line 366
    invoke-virtual {v1, v3, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    .line 373
    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setStock(D)V

    .line 374
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 378
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 379
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 380
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

    if-eqz v6, :cond_5

    .line 381
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    .line 382
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    .line 383
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    goto :goto_1

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->this$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;->access$300(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 392
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsModel$3;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
