.class public interface abstract Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsPresenter;
.super Ljava/lang/Object;
.source "SelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISelectGoodsPresenter"
.end annotation


# virtual methods
.method public abstract clearAllSelectedGoods()V
.end method

.method public abstract fetchStock(Z)V
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeSelected(ILcom/ayma/commonerp/bean/SellDetailBean;)V
.end method

.method public abstract searchGoods(Ljava/lang/String;)V
.end method

.method public abstract selectTypeChange(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;)V
.end method

.method public abstract showSelectedGoods()V
.end method

.method public abstract submitSelected()V
.end method
