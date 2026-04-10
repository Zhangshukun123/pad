.class public interface abstract Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayPresenter;
.super Ljava/lang/Object;
.source "OnlinePayContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnlinePayPresenter"
.end annotation


# virtual methods
.method public abstract cancelPayQueryRequest(Ljava/lang/String;)V
.end method

.method public abstract confirmIsShowInvoicingQrCode(Ljava/lang/String;)V
.end method

.method public abstract initBaseData()V
.end method

.method public abstract onCreate(Landroid/content/Intent;)V
.end method

.method public abstract pay(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract queryCashToOnline(Ljava/lang/String;)V
.end method

.method public abstract queryCashToOnlineDelayed(Ljava/lang/String;)V
.end method

.method public abstract queryOrderDelayed(Ljava/lang/String;Z)V
.end method

.method public abstract queryOrderStatue(Ljava/lang/String;Z)V
.end method

.method public abstract resetQueryTimes()V
.end method

.method public abstract toOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
