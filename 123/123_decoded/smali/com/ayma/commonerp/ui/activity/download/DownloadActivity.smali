.class public Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/download/DownloadContact$IDownloadView;"
    }
.end annotation


# static fields
.field public static final RESULT_UPDATE:I = 0xc8

.field public static final RESULT_UPDATED_PDA_PERMISSION:I = 0xd4

.field public static final RESULT_UPDATED_SIGN_IN_STATUE:I = 0xd3


# instance fields
.field adBtnAllCommonData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08004c
    .end annotation
.end field

.field adBtnCarNumberData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08004e
    .end annotation
.end field

.field adBtnCrossRoadData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08004f
    .end annotation
.end field

.field adBtnUserData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080053
    .end annotation
.end field

.field adWareData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080054
    .end annotation
.end field

.field btnPermission:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080050
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showForResult(Landroid/app/Activity;I)V
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b001e

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;
    .locals 2

    .line 45
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBtnAllCommonClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08004c
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadAllCommonData()V

    return-void
.end method

.method public onBtnBackClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->finish()V

    return-void
.end method

.method public onBtnBaseDataClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08004d
        }
    .end annotation

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadBaseData(Z)V

    return-void
.end method

.method public onBtnCrossRoadClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08004f
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadCrossRoadData(Z)V

    return-void
.end method

.method public onBtnDownloadTeamDataClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080051
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadTeamData(Z)V

    return-void
.end method

.method public onBtnDownloadUserDataClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080053
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadUserData(Z)V

    return-void
.end method

.method public onBtnPermissionClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080050
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadPermission(Z)V

    .line 106
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadPdaPermission(Z)V

    return-void
.end method

.method public onBtnTranClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08004e
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadTrainData(Z)V

    return-void
.end method

.method public onBtnUpdateSignStatueClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080052
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->updateSignInStatue(Z)V

    return-void
.end method

.method public onBtnWareClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080054
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadPresenter;->downloadGoodsData(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setResult(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc8

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
