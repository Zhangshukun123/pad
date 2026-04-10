.class public interface abstract Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;
.super Ljava/lang/Object;
.source "QueryWarehouseContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryWarehouseView"
.end annotation


# virtual methods
.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;)V"
        }
    .end annotation
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

.method public abstract notifyBigTypeChange()V
.end method

.method public abstract notifyListChange()V
.end method

.method public abstract notifySmallTypeChange()V
.end method

.method public abstract showTotalCountAndPrice(DLjava/lang/String;)V
.end method
