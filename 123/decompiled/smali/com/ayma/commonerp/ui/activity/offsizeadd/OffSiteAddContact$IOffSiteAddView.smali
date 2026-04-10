.class public interface abstract Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;
.super Ljava/lang/Object;
.source "OffSiteAddContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOffSiteAddView"
.end annotation


# virtual methods
.method public abstract getSupplierName()Ljava/lang/String;
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

.method public abstract initSupplier(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListDataChange()V
.end method

.method public abstract notifyTypeChange()V
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract setStationEnable(Z)V
.end method

.method public abstract showCountAndTotalPrice(DLjava/lang/Double;)V
.end method

.method public abstract showSelectPopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterReceiver()V
.end method
