.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/IStockReceiptDetailModel;
.super Ljava/lang/Object;
.source "IStockReceiptDetailModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract calculateAmount()V
.end method

.method public abstract editGoodsCount(Ljava/util/TreeMap;IDLcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ID",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchReceiptDetail(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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

.method public abstract updateReceiptStatue(Ljava/lang/String;)V
.end method
