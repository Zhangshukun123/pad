.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;Ljava/util/List;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 664
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setSalesPrice(D)V

    goto :goto_0

    .line 671
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 673
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 675
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 676
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getStock()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setStock(D)V

    .line 677
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    .line 680
    new-instance v6, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    .line 681
    invoke-virtual {v6, v3}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice0()D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    .line 685
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice()D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    .line 686
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostShuilv()D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    .line 687
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStoreType(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsTypeId(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsSmallTypeName(Ljava/lang/String;)V

    .line 691
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 692
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v5, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->getGoodsPrice(Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 694
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v6, v4}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsPrice(Ljava/util/List;)V

    .line 697
    :cond_3
    new-instance v4, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v9

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;-><init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;DD)V

    .line 698
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 702
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 703
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 704
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_5

    .line 705
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 708
    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 709
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 711
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackSuccessSwitchToMain(Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$15;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v3, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$6400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->callBackErrorSwitchToMain(Lcom/ayma/base/mvp/ModelBaseCallBack;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
