.class public interface abstract Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact$IGoodsOptionPresenter;
.super Ljava/lang/Object;
.source "GoodsOptionContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGoodsOptionPresenter"
.end annotation


# virtual methods
.method public abstract fetchGoodsList()V
.end method

.method public abstract filterGoods(Ljava/lang/String;)V
.end method

.method public abstract updateOnlineQty(DLcom/ayma/commonerp/bean/GoodsOptionBean;I)V
.end method
