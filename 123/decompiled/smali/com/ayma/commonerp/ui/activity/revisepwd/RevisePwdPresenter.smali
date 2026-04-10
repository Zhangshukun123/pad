.class public Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "RevisePwdPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->isViewAttach()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-object p0
.end method


# virtual methods
.method public changePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 41
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->isViewAttach()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    const-string p2, "\u767b\u5f55\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->showToast(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    const/16 p2, 0x7a

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->requestLogin(I)V

    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    const-string v1, "\u6b63\u5728\u4fee\u6539\u5bc6\u7801..."

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->showLoading(Ljava/lang/String;)V

    .line 50
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "loginName"

    .line 52
    invoke-virtual {v3, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "oldPassword"

    .line 53
    invoke-virtual {v3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "newPassword"

    .line 54
    invoke-virtual {v3, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    move-object v2, p1

    check-cast v2, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    new-instance v8, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter$1;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;)V

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;->changePwd(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;
    .locals 2

    .line 22
    new-instance v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/ayma/commonerp/base/BasePresenter;->onCreate()V

    .line 28
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;->init()V

    return-void
.end method
