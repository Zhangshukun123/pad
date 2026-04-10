.class public Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryUnusualOrderActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderContact$IQueryUnusualOrderView;"
    }
.end annotation


# instance fields
.field btnAlipayQuery:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801ae
    .end annotation
.end field

.field btnWechatQuery:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801af
    .end annotation
.end field

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b002e

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;
    .locals 2

    .line 52
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onAppTitleBtnLeftClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->finish()V

    return-void
.end method

.method public onAquoBtnAlipayQueryClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801ae
        }
    .end annotation

    return-void
.end method

.method public onAquoBtnWechatQueryClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801af
        }
    .end annotation

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
