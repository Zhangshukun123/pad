.class public interface abstract Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedPresenter;
.super Ljava/lang/Object;
.source "ScrappedContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScrappedPresenter"
.end annotation


# virtual methods
.method public abstract addSelectGoods(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAllData()V
.end method

.method public abstract commitData(Ljava/util/TreeMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
.end method

.method public abstract getScrappedType()V
.end method

.method public abstract initBaseDate()V
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract openSelectGoodsPage()V
.end method

.method public abstract prepareCommitData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
