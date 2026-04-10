.class public interface abstract Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;
.super Ljava/lang/Object;
.source "OnlineRefundJDContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnlineRefundJDView"
.end annotation


# virtual methods
.method public abstract initFilterDate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initRv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyDataItemChange(I)V
.end method

.method public abstract notifyListDataChanged()V
.end method

.method public abstract showFilterAndSortIsNot(Z)V
.end method
