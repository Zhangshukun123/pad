.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$orderDate:Ljava/lang/String;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$remark:Ljava/lang/String;

.field final synthetic val$store:Ljava/lang/String;

.field final synthetic val$storeModel:Ljava/lang/String;

.field final synthetic val$template:Ljava/lang/String;

.field final synthetic val$trainNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$orderDate:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$outDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$template:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$remark:Ljava/lang/String;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$trainNo:Ljava/lang/String;

    iput-object p9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "SO9"

    .line 1018
    invoke-static {}, Lorg/litepal/Operator;->beginTransaction()V

    .line 1020
    :try_start_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1021
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1022
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "yyyyMMdd"

    const-string v3, "yyyy-MM-dd"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 1023
    :try_start_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$3300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1024
    new-instance v7, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-direct {v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;-><init>()V

    .line 1025
    invoke-static {v0}, Lcom/ayma/commonerp/util/StoreUtil;->generateBillNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1026
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$orderDate:Ljava/lang/String;

    invoke-static {v9, v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setBillDay(Ljava/lang/String;)V

    .line 1027
    sget-object v9, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCompanyId(Ljava/lang/String;)V

    .line 1028
    sget-object v9, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCompany2Id(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v7, v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setOpStoreType(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setBillNo(Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCreateDate(Ljava/lang/String;)V

    .line 1032
    sget-object v9, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCreateUser(Ljava/lang/String;)V

    .line 1033
    sget-object v9, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setCreateShowName(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v7, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setUploadStatue(I)V

    .line 1036
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v9}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreId(Ljava/lang/String;)V

    .line 1037
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreName(Ljava/lang/String;)V

    .line 1038
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreTypeName(Ljava/lang/String;)V

    .line 1039
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v9}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreType(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v7, v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTrainName(Ljava/lang/String;)V

    .line 1041
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-virtual {v9, v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getTrainNoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTrainId(Ljava/lang/String;)V

    .line 1042
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$outDate:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setOutDay(Ljava/lang/String;)V

    .line 1043
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$template:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTemplateName(Ljava/lang/String;)V

    .line 1044
    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$remark:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setDescription(Ljava/lang/String;)V

    .line 1045
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    iget-object v10, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v10}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 1048
    new-instance v12, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-direct {v12}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;-><init>()V

    .line 1049
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAddQty()I

    move-result v13

    if-eqz v13, :cond_0

    .line 1050
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAddQty()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 1053
    :cond_0
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsId(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsCode(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsName(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBirthDay(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getEndDay()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEndDay(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getSalesPrice()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice(D)V

    .line 1059
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getSalesPrice0()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice0(D)V

    .line 1061
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAutualQty()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAutualQty(I)V

    .line 1062
    invoke-virtual {v12, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasStore(Z)V

    .line 1063
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->isHasPrice()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasPrice(Z)V

    .line 1064
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 1066
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->isEnough()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEnough(Z)V

    .line 1067
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getValidFlag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValidFlag(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->isValid()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValid(Z)V

    .line 1069
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsState()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsState(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setUnit(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getCostPrice()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice(D)V

    .line 1072
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getCostPrice0()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice0(D)V

    .line 1073
    invoke-virtual {v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getCostShuilv()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostShuilv(D)V

    .line 1075
    iget-object v11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStore(Ljava/lang/String;)V

    .line 1076
    iget-object v11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStoreModel(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v12, v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setTrainNo(Ljava/lang/String;)V

    .line 1078
    iget-object v11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$outDate:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setOutDate(Ljava/lang/String;)V

    .line 1079
    iget-object v11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$orderDate:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setOrderDate(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v12, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBillNo(Ljava/lang/String;)V

    .line 1081
    iget-object v11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$template:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setTemplateName(Ljava/lang/String;)V

    .line 1082
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1084
    :cond_1
    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreOutD(Ljava/util/List;)V

    .line 1085
    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-static {v9}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreId(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreType(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$trainNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTrainName(Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$trainNo:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->getTrainNoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTrainId(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$outDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setOutDay(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setTemplateName(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setDescription(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setUploadStatue(I)V

    .line 1098
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setBillNo(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$orderDate:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setBillDay(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 1101
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAddQty()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1102
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAddQty()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 1103
    invoke-virtual {v1, v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAddQty(I)V

    .line 1105
    :cond_3
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$store:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStore(Ljava/lang/String;)V

    .line 1106
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$storeModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStoreModel(Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$trainNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setTrainNo(Ljava/lang/String;)V

    .line 1108
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$outDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setOutDate(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$orderDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setOrderDate(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setTemplateName(Ljava/lang/String;)V

    .line 1111
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBillNo(Ljava/lang/String;)V

    goto :goto_2

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->setStoreOutD(Ljava/util/List;)V

    .line 1114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$1000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 1117
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1121
    invoke-static {}, Lorg/litepal/Operator;->setTransactionSuccessful()V

    .line 1122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0, v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5102(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Z)Z

    .line 1123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1130
    :cond_6
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$6000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1138
    :try_start_2
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$6200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    :goto_3
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    return-void

    :goto_4
    invoke-static {}, Lorg/litepal/Operator;->endTransaction()V

    .line 1147
    throw v0
.end method
