.class public interface abstract Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;
.super Ljava/lang/Object;
.source "UnuploadContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUnuploadView"
.end annotation


# virtual methods
.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyDataChange()V
.end method
