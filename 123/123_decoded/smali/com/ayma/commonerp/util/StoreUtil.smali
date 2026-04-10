.class public Lcom/ayma/commonerp/util/StoreUtil;
.super Ljava/lang/Object;
.source "StoreUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBillNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "yyyyMMddHHmmssSSS"

    .line 20
    invoke-static {v0}, Lcom/ayma/base/util/DateTimeUtils;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    const/16 v4, 0x1a

    .line 24
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateStoreIn(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBaseClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "baseClass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "billDay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCompany2Id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "company2Id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCompanyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "companyId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getOpStoreType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "opStoreType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getSupplierId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supplierId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object p0

    const-string v1, "billNo"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static generateStoreInDS(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillDay()Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 52
    invoke-virtual {p1, v2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setStoreInId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setDescription(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v3}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setBillNo(Ljava/lang/String;)V

    .line 56
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getAdjustmentRemark()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adjustmentRemark"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getAutualQty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "autualQty"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBatchNo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "batchNo"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBillNo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "billNo"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBirthDay()Ljava/lang/String;

    move-result-object v5

    const-string v6, "birthDay"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "costPrice"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice0()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "costPrice0"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostShuilv()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "costShuilv"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "description"

    .line 71
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "goodsCode"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "goodsId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "goodsName"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getOldBatchNo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "oldBatchNo"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getOldBirthDay()Ljava/lang/String;

    move-result-object v5

    const-string v6, "oldBirthDay"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "qty"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getSortOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sortOrder"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getStoreInDId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "storeInDId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "storeInId"

    .line 83
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getUnit()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unit"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getValidFlag()Ljava/lang/String;

    move-result-object p1

    const-string v5, "validFlag"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method
