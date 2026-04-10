.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;
.super Ljava/lang/Object;
.source "SellContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISellView"
.end annotation


# virtual methods
.method public abstract checkCommit(D)V
.end method

.method public abstract commitResult(Z)V
.end method

.method public abstract confirmDeleteGoodsOrNot(ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
.end method

.method public abstract dealScanResult(Ljava/lang/String;)V
.end method

.method public abstract dismissPayDialog()V
.end method

.method public abstract getPayWay()Ljava/lang/String;
.end method

.method public abstract getPriceType()Ljava/lang/String;
.end method

.method public abstract getReturnStatue()Z
.end method

.method public abstract hidePayLoading()V
.end method

.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSellTypeSpinner(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyDataChanged()V
.end method

.method public abstract notifyDataItemChanged(I)V
.end method

.method public abstract onlinePay(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract resetDiscount()V
.end method

.method public abstract resetReturnCheck()V
.end method

.method public abstract setCommitBtnEnable(Z)V
.end method

.method public abstract setPayDialogBtnEnable(Z)V
.end method

.method public abstract setPayQueryEnable(Z)V
.end method

.method public abstract showCommitType(Ljava/util/List;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;D)V"
        }
    .end annotation
.end method

.method public abstract showConfirmCashReturnTips(Z)V
.end method

.method public abstract showConfirmGoodsDialog(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showConfirmReturnClearList(Z)V
.end method

.method public abstract showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V
.end method

.method public abstract showInputDiscountDialog()V
.end method

.method public abstract showInputPayCodeDialog(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZD)V"
        }
    .end annotation
.end method

.method public abstract showPayErrorInfo(ILjava/lang/String;)V
.end method

.method public abstract showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPayOrderNo(Ljava/lang/String;)V
.end method

.method public abstract showSelectGoodsPopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTitle()V
.end method

.method public abstract showTotalCountAndTotalPrice(DD)V
.end method

.method public abstract unregisterReceiver()V
.end method
