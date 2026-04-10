.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryreceipt/IQueryReceiptModel;
.super Ljava/lang/Object;
.source "IQueryReceiptModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract clearData()V
.end method

.method public abstract deleteReceipt(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStatue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initSmallType()V
.end method

.method public abstract queryEtcData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract queryEtcDetail(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryGoodsSmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract removeData(I)V
.end method
