.class public interface abstract Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;
.super Ljava/lang/Object;
.source "OnlinePayContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnlinePayView"
.end annotation


# virtual methods
.method public abstract dealScanResult(Ljava/lang/String;)V
.end method

.method public abstract hideJDPayQrCode()V
.end method

.method public abstract hidePayLoading()V
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showGoods(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showInvoicingQrCode(Ljava/lang/String;)V
.end method

.method public abstract showJDPayQrCode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPayErrorInfo(Ljava/lang/String;)V
.end method

.method public abstract showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPayMoney(DLjava/lang/String;)V
.end method

.method public abstract showPayWay(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showScanCode(Ljava/lang/String;)V
.end method

.method public abstract unregisterReceiver()V
.end method

.method public abstract updatePayingStatue(Z)V
.end method
