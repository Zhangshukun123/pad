.class public interface abstract Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadPresenter;
.super Ljava/lang/Object;
.source "DownloadContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/download/DownloadContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadPresenter"
.end annotation


# virtual methods
.method public abstract downloadAllCommonData()V
.end method

.method public abstract downloadBaseData(Z)V
.end method

.method public abstract downloadCrossRoadData(Z)V
.end method

.method public abstract downloadGoodsData(Z)V
.end method

.method public abstract downloadPdaPermission(Z)V
.end method

.method public abstract downloadPermission(Z)V
.end method

.method public abstract downloadTeamData(Z)V
.end method

.method public abstract downloadTrainData(Z)V
.end method

.method public abstract downloadUserData(Z)V
.end method

.method public abstract initDownloadGoodsPresenter()V
.end method

.method public abstract initDownloadOtherDataPresenter()V
.end method

.method public abstract initSignInStatuePresenter()V
.end method

.method public abstract saveSignInStatue(Z)V
.end method

.method public abstract setResult()V
.end method

.method public abstract updateSignInStatue(Z)V
.end method
