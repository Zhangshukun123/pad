.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact$IWorkMealSelectGoodsPresenter;
.super Ljava/lang/Object;
.source "WorkMealSelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWorkMealSelectGoodsPresenter"
.end annotation


# virtual methods
.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchGoods(Ljava/lang/String;)V
.end method

.method public abstract submitSelected()V
.end method
