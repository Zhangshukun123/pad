.class public interface abstract Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginPresenter;
.super Ljava/lang/Object;
.source "LoginContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginPresenter"
.end annotation


# virtual methods
.method public abstract checkData()Z
.end method

.method public abstract checkIsLastLoginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract confirm()V
.end method

.method public abstract downloadBasic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract downloadGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadPickingList(Z)V
.end method

.method public abstract downloadTeamData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadTrainData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract generateLoginTipsContent(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)Ljava/lang/String;
.end method

.method public abstract initConfigPresenter()V
.end method

.method public abstract initDownloadGoodsPresenter()V
.end method

.method public abstract initDownloadOtherDataPresenter()V
.end method

.method public abstract initSignInStatuePresenter()V
.end method

.method public abstract initUserInfo()V
.end method

.method public abstract isSizeNotZero(I)Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loginFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loginFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract queryCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract queryUser(Ljava/lang/String;)V
.end method

.method public abstract queryUserInfoForServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveSignInStatue(Z)V
.end method

.method public abstract searchCrossRoad(Ljava/lang/String;)V
.end method

.method public abstract selectCrossRoad(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V
.end method

.method public abstract setNewStoreId(Z)V
.end method

.method public abstract switchToProductEnvironment()V
.end method

.method public abstract updateSignInStatue()V
.end method
