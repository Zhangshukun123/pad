.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellPresenter;
.super Ljava/lang/Object;
.source "SellContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISellPresenter"
.end annotation


# virtual methods
.method public abstract canOnlinePay()Z
.end method

.method public abstract cancelPayQueryRequest(Ljava/lang/String;)V
.end method

.method public abstract checkSignInStatue()V
.end method

.method public abstract commitGoodsChange(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitSellRecord(Ljava/lang/String;Ljava/lang/String;D)V
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

.method public abstract dealPayResult(Lcom/ayma/commonerp/eventbus/SaveSellServiceResult;)V
.end method

.method public abstract deleteAllGoods()V
.end method

.method public abstract deleteGoods(Ljava/lang/String;)V
.end method

.method public abstract getPriceTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract openOnlinePay(ZD)V
.end method

.method public abstract pay(Ljava/lang/String;Ljava/lang/String;DD)V
.end method

.method public abstract queryOrderDelayed(Ljava/lang/String;)V
.end method

.method public abstract queryOrderStatue()V
.end method

.method public abstract resetQueryTimes()V
.end method

.method public abstract searchGoods(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setCancelQuery(Z)V
.end method

.method public abstract updateGoodsCount(I)V
.end method

.method public abstract verifyGoods()V
.end method
