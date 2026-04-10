.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryorder/IQueryOrderModel;
.super Ljava/lang/Object;
.source "IQueryOrderModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract filterData(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getFilterEndDate()Ljava/lang/String;
.end method

.method public abstract getFilterStartDate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOrderTypeCode(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPayTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initBaseData(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract initPayType()V
.end method

.method public abstract queryOrder(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sortList(ZLcom/ayma/base/mvp/ModelCallBack;)V
.end method
