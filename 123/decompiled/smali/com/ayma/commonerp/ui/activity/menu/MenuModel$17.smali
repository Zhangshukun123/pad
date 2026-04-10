.class Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;
.super Ljava/lang/Object;
.source "MenuModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->queryTeamWarehouseStock(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 833
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7600(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 770
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 771
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 775
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 776
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7100(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 779
    :cond_1
    new-instance p2, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;

    invoke-direct {p2}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;-><init>()V

    .line 780
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->judgeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->setMessage(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 782
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7200(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)V

    .line 783
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 784
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7300(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;)V

    .line 785
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 784
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 787
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7400(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 790
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 793
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 794
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->setQty(D)V

    goto :goto_0

    .line 796
    :cond_3
    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 799
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 800
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 801
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 804
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 807
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_5

    goto :goto_1

    .line 810
    :cond_5
    new-instance v2, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    invoke-direct {v2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;-><init>()V

    .line 811
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsId(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsName(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setGoodsCode(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice(D)V

    .line 815
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostPrice0()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostPrice0(D)V

    .line 816
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getCostShuilv()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setCostShuilv(D)V

    .line 817
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getBirthDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setBirthDay(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setAutualQty(Ljava/lang/String;)V

    const-string v1, ""

    .line 820
    invoke-virtual {v2, v1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setDescription(Ljava/lang/String;)V

    .line 821
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 823
    :cond_6
    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->setList(Ljava/util/List;)V

    .line 824
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    goto :goto_3

    .line 772
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7000(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 826
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel$17;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->access$7500(Lcom/ayma/commonerp/ui/activity/menu/MenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 827
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
