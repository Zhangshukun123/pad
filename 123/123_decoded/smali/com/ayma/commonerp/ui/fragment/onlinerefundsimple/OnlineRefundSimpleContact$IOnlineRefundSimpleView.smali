.class public interface abstract Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;
.super Ljava/lang/Object;
.source "OnlineRefundSimpleContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnlineRefundSimpleView"
.end annotation


# virtual methods
.method public abstract dealScanResult(Ljava/lang/String;)V
.end method

.method public abstract query()V
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract setReturnState(Ljava/lang/String;Z)V
.end method

.method public abstract showOrder(Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterReceiver()V
.end method
