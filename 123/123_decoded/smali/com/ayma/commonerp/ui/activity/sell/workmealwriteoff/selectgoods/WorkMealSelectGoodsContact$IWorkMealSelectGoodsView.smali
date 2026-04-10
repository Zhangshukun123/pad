.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact$IWorkMealSelectGoodsView;
.super Ljava/lang/Object;
.source "WorkMealSelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWorkMealSelectGoodsView"
.end annotation


# virtual methods
.method public abstract listMoveTo(I)V
.end method

.method public abstract notifyGoodsListChange()V
.end method

.method public abstract showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
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

.method public abstract showSelectGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
.end method
