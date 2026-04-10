.class public interface abstract Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;
.super Ljava/lang/Object;
.source "MenuContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMenuView"
.end annotation


# virtual methods
.method public abstract checkSimCardInfo()V
.end method

.method public abstract comingUpload()V
.end method

.method public abstract commonSell()V
.end method

.method public abstract dismissQuickHandoverAdd()V
.end method

.method public abstract dismissQuickHandoverHandover()V
.end method

.method public abstract downloadCommonData()V
.end method

.method public abstract downloadPickingList()V
.end method

.method public abstract editQuickHandoverAddData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editQuickHandoverAddQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V
.end method

.method public abstract editQuickHandoverHandoverData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editQuickHandoverHandoverQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V
.end method

.method public abstract exit()V
.end method

.method public abstract isResume()Z
.end method

.method public abstract loadMenu(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract makeAdd()V
.end method

.method public abstract makeCarAdd()V
.end method

.method public abstract makeCarQuit()V
.end method

.method public abstract makeQuitClass()V
.end method

.method public abstract queryEtcAll()V
.end method

.method public abstract querySellAll()V
.end method

.method public abstract querySellDetail()V
.end method

.method public abstract querySellGetMoney()V
.end method

.method public abstract queryTable()V
.end method

.method public abstract queryWarehouse()V
.end method

.method public abstract quickHandover()V
.end method

.method public abstract revisePassword()V
.end method

.method public abstract sell12306()V
.end method

.method public abstract sellAnalyse()V
.end method

.method public abstract setQuickHandoverLoading(Z)V
.end method

.method public abstract setQuickHandoverOptionEnable(Z)V
.end method

.method public abstract show12306Order(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract show12306TipDot(Z)V
.end method

.method public abstract showNotUploadSellData(I)V
.end method

.method public abstract showQuickHandoverAddResult(Ljava/lang/String;)V
.end method

.method public abstract showQuickHandoverHandoverResult(Ljava/lang/String;)V
.end method

.method public abstract showQuickHandoverResult(Ljava/lang/String;IZ)V
.end method

.method public abstract showQuitSystemDialog()V
.end method

.method public abstract showSelectDateDialog(Landroid/widget/TextView;)V
.end method

.method public abstract showSignInStatue(Z)V
.end method

.method public abstract showTakeOffIsNot(Z)V
.end method

.method public abstract showUnHandleCounterOrder(ZI)V
.end method

.method public abstract takeOff()V
.end method

.method public abstract teamHandover()V
.end method

.method public abstract toInvoicing()V
.end method

.method public abstract toRefund()V
.end method

.method public abstract vipLargess()V
.end method
