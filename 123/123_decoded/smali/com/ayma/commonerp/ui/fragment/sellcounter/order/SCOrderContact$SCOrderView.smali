.class public interface abstract Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;
.super Ljava/lang/Object;
.source "SCOrderContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SCOrderView"
.end annotation


# virtual methods
.method public abstract getData()V
.end method

.method public abstract initList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListDataChange(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeOrderByPosition(II)V
.end method

.method public abstract stopRefresh()V
.end method
