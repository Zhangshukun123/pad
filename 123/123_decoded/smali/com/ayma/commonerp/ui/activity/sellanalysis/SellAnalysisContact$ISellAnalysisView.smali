.class public interface abstract Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;
.super Ljava/lang/Object;
.source "SellAnalysisContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISellAnalysisView"
.end annotation


# virtual methods
.method public abstract initRlv(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
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

.method public abstract showAmount(Lcom/ayma/commonerp/bean/SaleAnalysisAmount;Ljava/lang/String;)V
.end method

.method public abstract showErrorTip(Ljava/lang/String;)V
.end method
