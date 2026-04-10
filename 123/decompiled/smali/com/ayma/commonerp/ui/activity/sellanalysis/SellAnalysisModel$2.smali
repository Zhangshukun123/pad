.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;
.super Ljava/lang/Object;
.source "SellAnalysisModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->queryGoodsPriceAndCalculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$700(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)V

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    new-instance v1, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    invoke-direct {v1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;-><init>()V

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$802(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Lcom/ayma/commonerp/bean/SaleAnalysisAmount;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$100(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    .line 228
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->isCorrect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5dee\u5f02\u6570\u91cf\uff1a"

    .line 230
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getDifference()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c"

    .line 232
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$900(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryGoodsSimpleSalePriceByGoodsCode(Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/bean/GoodsPriceBean;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1

    .line 237
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u65e0\u9500\u552e\u4ef7\u683c\uff0c\u9ed8\u8ba4\u4e3a0\uff0c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v5

    .line 242
    :goto_1
    invoke-virtual {v3, v5, v6}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->setSalePrice(D)V

    .line 245
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getAddCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getFieldOutQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setAddCount(D)V

    .line 246
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getInCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setInCount(D)V

    .line 247
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutStockCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getOutQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setOutStockCount(D)V

    .line 248
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getReturnCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getReturnTeamQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setReturnCount(D)V

    .line 249
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getScrappedCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getScrapTeamQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setScrappedCount(D)V

    .line 250
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getLostCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getLostTeamQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setLostCount(D)V

    .line 251
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSaleCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setSaleCount(D)V

    .line 252
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSale12306Count()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty12306()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setSale12306Count(D)V

    .line 253
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverToQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setOutCount(D)V

    .line 254
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getTrainStockCount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamNumberQty()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setTrainStockCount(D)V

    .line 256
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getAddAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getFieldOutQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setAddAmount(D)V

    .line 257
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getInAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setInAmount(D)V

    .line 258
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutStockAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getOutQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setOutStockAmount(D)V

    .line 259
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getReturnAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getReturnTeamQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setReturnAmount(D)V

    .line 260
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getScrappedAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getScrapTeamQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setScrappedAmount(D)V

    .line 261
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getLostAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getLostTeamQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setLostAmount(D)V

    .line 262
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSaleAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setSaleAmount(D)V

    .line 263
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSale12306Amount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty12306()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setSale12306Amount(D)V

    .line 264
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverToQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setOutAmount(D)V

    .line 265
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v4

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v7}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$800(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Lcom/ayma/commonerp/bean/SaleAnalysisAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getTrainStockAmount()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamNumberQty()D

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->setTrainStockAmount(D)V

    goto/16 :goto_0

    .line 267
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1002(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v1, "\n\u6ce8\uff1a\u53ef\u66f4\u65b0\u5546\u54c1\u8d44\u6599\u540e\u91cd\u8bd5\u67e5\u8be2"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1102(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 285
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;->access$1200(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisModel$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method
