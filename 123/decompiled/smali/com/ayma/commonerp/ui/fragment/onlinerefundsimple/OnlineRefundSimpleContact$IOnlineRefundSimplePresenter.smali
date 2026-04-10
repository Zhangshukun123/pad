.class public interface abstract Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimplePresenter;
.super Ljava/lang/Object;
.source "OnlineRefundSimpleContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnlineRefundSimplePresenter"
.end annotation


# virtual methods
.method public abstract queryOrder(Ljava/lang/String;)V
.end method

.method public abstract queryRefundOrder(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryRefundOrderDelay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract refundOrder()V
.end method

.method public abstract refundOrder(Ljava/lang/String;)V
.end method
