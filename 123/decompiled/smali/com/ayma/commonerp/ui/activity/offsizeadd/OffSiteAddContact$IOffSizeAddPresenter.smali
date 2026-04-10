.class public interface abstract Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSizeAddPresenter;
.super Ljava/lang/Object;
.source "OffSiteAddContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOffSizeAddPresenter"
.end annotation


# virtual methods
.method public abstract addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)V
.end method

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

.method public abstract commitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dealManyGoodsSameCode(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
.end method

.method public abstract getData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getSupplierList()V
.end method

.method public abstract initBaseDate()V
.end method

.method public abstract offSizeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openSelectGoodsPage()V
.end method

.method public abstract queryStation(Ljava/lang/String;)V
.end method
