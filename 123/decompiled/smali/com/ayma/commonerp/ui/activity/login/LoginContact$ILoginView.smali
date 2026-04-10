.class public interface abstract Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;
.super Ljava/lang/Object;
.source "LoginContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginView"
.end annotation


# virtual methods
.method public abstract checkRunningMode()V
.end method

.method public abstract confirmDownloadPickingList()V
.end method

.method public abstract generateOutCode(Ljava/lang/String;)V
.end method

.method public abstract login()V
.end method

.method public abstract notifySearchCrossRoadChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showConfirmDialog(Ljava/lang/String;)V
.end method

.method public abstract showSearchCrossRoadPopup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSelectCrossRoad(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showUserName(Ljava/lang/String;)V
.end method

.method public abstract toMenu()V
.end method

.method public abstract toStockMenu()V
.end method

.method public abstract updateTitle()V
.end method
