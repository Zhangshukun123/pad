.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;
.super Ljava/lang/Object;
.source "Sell12306Contact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sell12306View"
.end annotation


# virtual methods
.method public abstract clearSelect()V
.end method

.method public abstract notifyListDataChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCommitButtonEnable(Z)V
.end method

.method public abstract showDataCount()V
.end method
