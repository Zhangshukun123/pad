.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 287
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 288
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)V

    .line 293
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$1;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;)V

    .line 294
    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateBean;

    .line 299
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateBean;->getTemplateInfoList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 301
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;

    .line 303
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;->getGoodsInfoList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 305
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;->getGoodsInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    .line 307
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;->getOutTemplateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->setOutTemplateId(Ljava/lang/String;)V

    goto :goto_2

    .line 309
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 314
    :cond_2
    invoke-static {v2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 315
    invoke-static {v3}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "store=? and storeModel=? and trainNo=? and orderDate=? and outDate=? and templateId=?"

    aput-object v5, v4, v1

    .line 317
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$store:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$storeModel:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v8, v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$trainNo:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x4

    iget-object v8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v8, v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$outDate:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x5

    iget-object v8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v8, v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$orderDate:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x6

    iget-object v8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v8, v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$templateId:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v4}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-class v5, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v4, v5}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "outTemplateId=?"

    aput-object v7, v5, v1

    .line 318
    iget-object v7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v7, v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->val$templateId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v5

    const-class v6, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    invoke-virtual {v5, v6}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 319
    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v6, v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 320
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    .line 321
    new-instance v7, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-direct {v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;-><init>()V

    .line 322
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getStoreNumId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStoreNumId(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsId(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getBirthDay()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBirthDay(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsCode(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getSalesPrice()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice(D)V

    .line 328
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getSalesPrice0()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice0(D)V

    .line 329
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getQty()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 330
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getNeedQty()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setNeedQty(I)V

    .line 331
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getAutualQty()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAutualQty(I)V

    .line 332
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isHasStore()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasStore(Z)V

    .line 333
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isHasPrice()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasPrice(Z)V

    .line 334
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isEnough()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEnough(Z)V

    .line 335
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isValid()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValid(Z)V

    .line 336
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setUnit(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostPrice()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice(D)V

    .line 338
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostPrice0()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice0(D)V

    .line 339
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostShuilv()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostShuilv(D)V

    .line 340
    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v6, v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 342
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 343
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    :cond_4
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v4, v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$2;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 353
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$4$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
