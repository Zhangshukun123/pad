.class public Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "UnuploadActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

.field rlv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080276
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080287
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0042

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 139
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInDp()F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    return v0
.end method

.method public init()V
    .locals 1

    const-string v0, "\u4e0a\u4f20"

    .line 65
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->showRightBtnText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;
    .locals 2

    .line 85
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    .line 95
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataChange()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUploadClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->adapter:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u6ca1\u6709\u53ef\u4e0a\u4f20\u7684\u6570\u636e"

    .line 75
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "\u6b63\u5728\u4e0a\u4f20\u6570\u636e"

    .line 78
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->showToast(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;

    invoke-direct {v0}, Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 127
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
