.class public interface abstract Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;
.super Ljava/lang/Object;
.source "QueryBillContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryBillView"
.end annotation


# virtual methods
.method public abstract initList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyBigTypeChange()V
.end method

.method public abstract notifyDataListChange()V
.end method

.method public abstract notifySmallTypeChange()V
.end method

.method public abstract showCountAndAmount(Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;)V
.end method
