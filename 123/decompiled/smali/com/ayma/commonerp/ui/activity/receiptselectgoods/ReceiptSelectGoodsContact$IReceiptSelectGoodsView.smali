.class public interface abstract Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsView;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReceiptSelectGoodsView"
.end annotation


# virtual methods
.method public abstract hideSupplier()V
.end method

.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListDataChange()V
.end method

.method public abstract registerScanReceiver()V
.end method

.method public abstract showInputGoodsCountDialog(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract showQtyAndAmount(DD)V
.end method

.method public abstract showSelectDateDialog(Landroid/widget/TextView;)V
.end method

.method public abstract showSupplierName(Ljava/lang/String;)V
.end method

.method public abstract unregisterScanReceiver()V
.end method

.method public abstract updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/widget/EditText;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            "I",
            "Lcom/ayma/base/widget/ClearEditText;",
            "Landroid/widget/EditText;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsPriceBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifySuccess(Z)V
.end method
