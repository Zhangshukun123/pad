.class public interface abstract Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;
.super Ljava/lang/Object;
.source "WorkMealWriteOffContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWorkMealWriteOffView"
.end annotation


# virtual methods
.method public abstract confirmWriteOff(Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V
.end method

.method public abstract initSpinner(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyListChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeListItem(I)V
.end method
