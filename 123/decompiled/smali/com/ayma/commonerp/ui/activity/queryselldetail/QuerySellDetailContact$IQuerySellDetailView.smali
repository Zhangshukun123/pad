.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;
.super Ljava/lang/Object;
.source "QuerySellDetailContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQuerySellDetailView"
.end annotation


# virtual methods
.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSpinners(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSuccess()V
.end method

.method public abstract notifyBigTypeChange()V
.end method

.method public abstract notifyDataListChange()V
.end method

.method public abstract notifySmallTypeChange()V
.end method

.method public abstract showGoodsNamePopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCountAndMoney(DDDDD)V
.end method
