.class public Lcom/ayma/commonerp/ui/activity/login/LoginActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;,
        Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;",
        "Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;"
    }
.end annotation


# instance fields
.field alBtnLogin:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080087
    .end annotation
.end field

.field alTvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080090
    .end annotation
.end field

.field btnLeft:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e5
    .end annotation
.end field

.field private codeDialog:Landroid/app/AlertDialog;

.field private downloadDialog:Landroid/app/AlertDialog;

.field private downloadProgress:Landroid/widget/ProgressBar;

.field etUserCode:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080089
    .end annotation
.end field

.field etUserPwd:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008a
    .end annotation
.end field

.field private firstClick:J

.field private runningModeDialog:Landroid/app/AlertDialog;

.field private searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

.field private searchCrossRoadPopup:Landroid/widget/PopupWindow;

.field private selectCrossRoadPopup:Landroid/widget/PopupWindow;

.field tilUserCode:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008b
    .end annotation
.end field

.field tilUserName:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008c
    .end annotation
.end field

.field tilUserPwd:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008d
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e8
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08008e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;J)J
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->firstClick:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkRunningMode()V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isProductionEnvironment"

    invoke-static {v0, v3, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->runningModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u68c0\u6d4b\u5230\u7cfb\u7edf\u5f53\u524d\u8fd0\u884c\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u9884\u53d1\u5e03\u73af\u5883"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\uff0c\u5982\u60a8\u5e76\u975e\u6d4b\u8bd5\u4eba\u5458\uff0c\u8bf7\u5207\u6362\u81f3\u751f\u4ea7\u73af\u5883"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6d4b\u8bd5\u4eba\u5458\u8bf7\u5ffd\u7565"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 173
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 174
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0xa

    const/16 v4, 0xf

    const/16 v5, 0x21

    .line 179
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 183
    new-instance v1, Landroid/text/SpannableString;

    const-string v4, "\u5207\u6362\u81f3\u751f\u4ea7\u73af\u5883"

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v6, 0x7

    .line 184
    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 185
    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u6ce8\u610f"

    .line 187
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v3, "\u5ffd\u7565"

    .line 189
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->runningModeDialog:Landroid/app/AlertDialog;

    .line 203
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->setAutoSizeConfig()V

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->runningModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->runningModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method public confirmDownloadPickingList()V
    .locals 8

    .line 465
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->toMenu()V

    .line 468
    :cond_0
    new-instance v5, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$11;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$12;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v2, ""

    const-string v3, "\u662f\u5426\u4e0b\u8f7d\u9886\u6599\u5355\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public generateOutCode(Ljava/lang/String;)V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v0, v1}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SN\u53f7\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u751f\u6210\u51fa\u4e58\u7801"

    .line 369
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void

    .line 372
    :cond_0
    invoke-static {p1, v0, v0}, Lcom/vondear/rxfeature/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->setAutoSizeConfig()V

    .line 376
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0062

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 377
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 379
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x7f080552

    .line 384
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$7;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080790

    .line 390
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080556

    .line 391
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 392
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 393
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 395
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_2
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0021

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 538
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->hideBack()V

    .line 539
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$14;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$14;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->alTvVersion:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->getVersionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Ver %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 561
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$16;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$16;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 573
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserPwd:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;
    .locals 2

    .line 611
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$showSearchCrossRoadPopup$0$LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectCrossRoad$1$LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 516
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectCrossRoad$2$LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 525
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public login()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u5de5\u53f7"

    .line 402
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 407
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {v2}, Lcom/vondear/rxtool/RxTool;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifySearchCrossRoadChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 580
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->codeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 586
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 591
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    return-void

    .line 594
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->firstClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    const/4 v0, 0x0

    .line 595
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 597
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->firstClick:J

    const-string v0, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7cfb\u7edf"

    .line 598
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$17;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$17;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onBtnLoginClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080087
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->login()V

    return-void
.end method

.method public onBtnSnClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080088
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/CommonUtil;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->isSNEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u83b7\u53d6SN\u7801\u4e2d"

    .line 331
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showLoading(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V

    goto :goto_0

    .line 347
    :cond_1
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    .line 348
    sget-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->generateOutCode(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->init()V

    .line 122
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/CommonUtil;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->isSNEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V

    goto :goto_0

    .line 135
    :cond_0
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onResume()V

    .line 154
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->checkRunningMode()V

    return-void
.end method

.method public putUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 362
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showConfirmDialog(Ljava/lang/String;)V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->setAutoSizeConfig()V

    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 422
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$10;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v1, "\u53d6\u6d88"

    .line 424
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v1, "\u66f4\u65b0\u4ea4\u8def"

    .line 430
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$8;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    const-string v1, "\u786e\u5b9a"

    .line 437
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 447
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 449
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public showSearchCrossRoadPopup(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080723

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$RT_UedkjDzlm_ogKw_S_lKKnBd8;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$RT_UedkjDzlm_ogKw_S_lKKnBd8;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080617

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0802ab

    .line 250
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    if-nez v2, :cond_1

    .line 258
    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    goto :goto_1

    .line 260
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    :goto_1
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 263
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 264
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadAdapter:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f080364

    .line 265
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 286
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 287
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 288
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 289
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const p1, 0x1020002

    .line 290
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 291
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->setAutoSizeConfig()V

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->searchCrossRoadPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showSelectCrossRoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080723

    .line 516
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$l-wX5rPojJD6mjIhYLBgwKOtCi0;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$l-wX5rPojJD6mjIhYLBgwKOtCi0;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080617

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0802ab

    .line 518
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$13;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$13;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0807a5

    .line 525
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$kEpMKkTHJDWjVWmdQoDqM5uYnqA;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$kEpMKkTHJDWjVWmdQoDqM5uYnqA;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    new-instance v0, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 527
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 528
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;Ljava/util/List;)V

    .line 529
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 530
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 531
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 532
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 533
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->selectCrossRoadPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showUserName(Ljava/lang/String;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    .line 504
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    return-void
.end method

.method public toMenu()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->updateLoginStatue(Z)V

    .line 489
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v3, "userCode"

    invoke-virtual {v0, v3, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 490
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    const-string v2, "userName"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    const-string v2, "trainName"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    const-string v2, "teamName"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/ayma/base/util/CrashHandler;->getInstance()Lcom/ayma/base/util/CrashHandler;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    const-string v2, "company2Name"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/base/util/CrashHandler;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->show(Landroid/content/Context;)V

    .line 497
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->finishActivity()V

    return-void
.end method

.method public toStockMenu()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->show(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->finishActivity()V

    return-void
.end method

.method public updateTitle()V
    .locals 0

    .line 223
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showTitle()V

    return-void
.end method
