.class public interface abstract Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;
.super Ljava/lang/Object;
.source "TeamHandoverContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITeamHandoverView"
.end annotation


# virtual methods
.method public abstract confirmCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
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

.method public abstract movePosition(IZ)V
.end method

.method public abstract notifyItemChange(I)V
.end method

.method public abstract notifyListDataChange()V
.end method

.method public abstract selectOption(Z)V
.end method

.method public abstract showCountAndTotalPrice(DD)V
.end method

.method public abstract showEditCountDialog(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end method

.method public abstract showSelectDateDialog(Landroid/widget/TextView;)V
.end method

.method public abstract showSelectedCountAndAmount(DD)V
.end method
