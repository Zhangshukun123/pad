.class public interface abstract Lcom/ayma/commonerp/ui/activity/sellanalysis/ISellAnalysisModel;
.super Ljava/lang/Object;
.source "ISellAnalysisModel.java"


# virtual methods
.method public abstract clearData()V
.end method

.method public abstract getBigTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getErrorTip()Ljava/lang/String;
.end method

.method public abstract getSaleDataFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.method public abstract getSellTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallTypeId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initSaleType()V
.end method

.method public abstract initSmallType()V
.end method

.method public abstract queryGoodsBigType(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract queryGoodsPriceAndCalculateAmount(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract querySmallType(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
