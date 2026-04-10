.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptPresenter;
.super Ljava/lang/Object;
.source "QueryReceiptContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryReceiptPresenter"
.end annotation


# virtual methods
.method public abstract deleteReceipt(Ljava/lang/String;I)V
.end method

.method public abstract queryEtcData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryEtcDetail(Lcom/ayma/commonerp/bean/QueryReceiptBean;)V
.end method
