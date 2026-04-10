.class public interface abstract Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverPresenter;
.super Ljava/lang/Object;
.source "TeamHandoverContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITeamHandoverPresenter"
.end annotation


# virtual methods
.method public abstract cancelSelect()V
.end method

.method public abstract commitData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract initHandler()V
.end method

.method public abstract prepareCommitData(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTrainStock(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract selectAll()V
.end method

.method public abstract selectItem(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZ)V
.end method

.method public abstract selectReverse()V
.end method

.method public abstract sendMessage(ILjava/lang/Object;)V
.end method

.method public abstract updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method
