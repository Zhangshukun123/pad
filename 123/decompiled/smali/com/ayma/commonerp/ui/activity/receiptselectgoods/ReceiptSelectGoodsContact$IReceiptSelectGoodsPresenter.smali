.class public interface abstract Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact$IReceiptSelectGoodsPresenter;
.super Ljava/lang/Object;
.source "ReceiptSelectGoodsContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReceiptSelectGoodsPresenter"
.end annotation


# virtual methods
.method public abstract addGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
.end method

.method public abstract filterGoods(Ljava/lang/String;)V
.end method

.method public abstract getAddGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getRequireGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getScrappedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getSupplierName(Ljava/lang/String;)V
.end method

.method public abstract initGoodsPresenter()V
.end method

.method public abstract initHandler()V
.end method

.method public abstract isScrapped()Z
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract queryGoodsDataFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryGoodsDataFromTrainStock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract resetData()V
.end method

.method public abstract saveData()V
.end method

.method public abstract searchGoods(Ljava/lang/String;)V
.end method

.method public abstract sendMessage(ILjava/lang/String;)V
.end method

.method public abstract updateGoodsData(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract updateWarehouse()V
.end method

.method public abstract verifyReceipt()V
.end method
