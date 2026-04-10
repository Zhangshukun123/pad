.class public interface abstract Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;
.super Ljava/lang/Object;
.source "SelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISelectGoodsView"
.end annotation


# virtual methods
.method public abstract confirmDeleteSelectedGoods(ILcom/ayma/commonerp/bean/SellDetailBean;)V
.end method

.method public abstract listMoveTo(I)V
.end method

.method public abstract notifyGoodsListChange()V
.end method

.method public abstract setRefreshFinish()V
.end method

.method public abstract showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showGoodsType(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V
.end method

.method public abstract showSearchResultPopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSelectedGoodsCountAndTotalPrice(DD)V
.end method

.method public abstract showSelectedGoodsPopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method
