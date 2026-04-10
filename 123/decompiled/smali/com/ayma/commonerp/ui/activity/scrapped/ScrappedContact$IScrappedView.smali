.class public interface abstract Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;
.super Ljava/lang/Object;
.source "ScrappedContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScrappedView"
.end annotation


# virtual methods
.method public abstract initReceiptType(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
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

.method public abstract initScrappedType(Ljava/util/List;)V
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

.method public abstract notifyScrappedTypeChange()V
.end method

.method public abstract showCountAndTotalPrice(DLjava/lang/Double;)V
.end method

.method public abstract showInputScrappedRemarkDialog(Ljava/lang/String;)V
.end method

.method public abstract toSelectGoodsPage(Ljava/lang/String;)V
.end method
