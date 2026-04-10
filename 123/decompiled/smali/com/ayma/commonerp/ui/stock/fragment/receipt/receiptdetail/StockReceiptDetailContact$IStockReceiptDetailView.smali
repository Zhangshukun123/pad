.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailContact$IStockReceiptDetailView;
.super Ljava/lang/Object;
.source "StockReceiptDetailContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/receiptdetail/StockReceiptDetailContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStockReceiptDetailView"
.end annotation


# virtual methods
.method public abstract initList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initTableTitle(Ljava/lang/String;)V
.end method

.method public abstract notifyListDataChange()V
.end method

.method public abstract notifyListItemChange(I)V
.end method

.method public abstract showEditGoodsCountError(Ljava/lang/String;)V
.end method

.method public abstract showInputCountDialog(Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;I)V
.end method

.method public abstract showOptionBtn(Ljava/lang/String;)V
.end method

.method public abstract showReceiptDetail(Lcom/ayma/commonerp/bean/StockReceiptDetailBean;)V
.end method

.method public abstract showTotalCountAndAmount(DD)V
.end method
