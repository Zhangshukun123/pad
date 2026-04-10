.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutModel;
.super Ljava/lang/Object;
.source "IStockOutModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract commitOutReceipt(Ljava/util/TreeMap;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract dataChange(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deletOutReceiptOnLine(Ljava/util/TreeMap;ILcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract downloadTrainData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.method public abstract fetchStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchTrain(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutReceiptBody(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOutStockTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPage()I
.end method

.method public abstract getReceiptStatueCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReceiptStatueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceiptTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStockOutHeadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStockTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.method public abstract getStoreDataNoOnline(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getStoreId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract gettrainId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryTypeFromStore(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract uploadOutReceipt(Ljava/lang/String;IILjava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method
