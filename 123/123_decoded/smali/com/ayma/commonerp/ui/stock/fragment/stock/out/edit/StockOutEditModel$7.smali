.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->fetchGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$orderDate:Ljava/lang/String;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$store:Ljava/lang/String;

.field final synthetic val$storeModel:Ljava/lang/String;

.field final synthetic val$templateId:Ljava/lang/String;

.field final synthetic val$trainNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$store:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$storeModel:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$trainNo:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$outDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$orderDate:Ljava/lang/String;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$templateId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 524
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutD()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "store=? and storeModel=? and trainNo=? and orderDate=? and outDate=? and templateId=?"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 534
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$store:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$storeModel:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$trainNo:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$outDate:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$orderDate:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x6

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$templateId:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "outTemplateId=?"

    aput-object v1, v0, v2

    .line 539
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->val$templateId:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 540
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    .line 541
    new-instance v3, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-direct {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;-><init>()V

    .line 542
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getStoreNumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStoreNumId(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsId(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBirthDay(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsCode(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsName(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getSalesPrice()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice(D)V

    .line 548
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getSalesPrice0()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice0(D)V

    .line 549
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 550
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getNeedQty()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setNeedQty(I)V

    .line 551
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getAutualQty()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAutualQty(I)V

    .line 552
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isHasStore()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasStore(Z)V

    .line 553
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isHasPrice()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasPrice(Z)V

    .line 554
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isEnough()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEnough(Z)V

    .line 555
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValid(Z)V

    .line 556
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setUnit(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostPrice()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice(D)V

    .line 558
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostPrice0()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice0(D)V

    .line 559
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->getCostShuilv()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostShuilv(D)V

    .line 560
    invoke-virtual {v3, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAddQty(I)V

    .line 561
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 570
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$7;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
