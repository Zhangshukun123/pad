.class public Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "RevisePasswordActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdContact$IRevisePwdView;"
    }
.end annotation


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final RESULT_NEED_LOGIN:I = 0x7a

.field public static final RESULT_SUCCESS:I = 0x79

.field public static final TYPE_SIMPLE:I = 0x1

.field public static final TYPE_STORE:I = 0x2


# instance fields
.field rpaBtnSubmit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061f
    .end annotation
.end field

.field rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080620
    .end annotation
.end field

.field rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080621
    .end annotation
.end field

.field rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080622
    .end annotation
.end field

.field tilConfirm:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080623
    .end annotation
.end field

.field tilNewPwd:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080624
    .end annotation
.end field

.field tilOldPwd:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080625
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;II)V
    .locals 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 96
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public checkIsStrong(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(?=.*[A-Z])(?=.*\\d)(?=.*[a-z])(?=.*\\d)(?=.*[ !\"\"#$%&\'()*+,-./:;<=>?@@\\[\\]\\^_`{|}~])[A-Z\\da-z\\d !\"\"#$%&\'()*+,-./:;<=>?@@\\[\\]\\^_`{|}~]{8,30}"

    .line 206
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0032

    return v0
.end method

.method public init()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilOldPwd:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilNewPwd:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilConfirm:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;
    .locals 2

    .line 161
    new-instance v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBtnSubmitClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08061f
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->submit()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->type:I

    if-ne p1, v1, :cond_0

    .line 77
    new-instance p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$1;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V

    const-string v0, ""

    const-string v1, "\u53c2\u6570\u5f02\u5e38"

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public requestLogin(I)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {p1}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 221
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public submit()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u65e7\u5bc6\u7801"

    .line 167
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u65b0\u5bc6\u7801"

    .line 172
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u786e\u8ba4\u5bc6\u7801"

    .line 177
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "\u8bf7\u68c0\u67e5\u4e24\u6b21\u65b0\u5bc6\u7801\u8f93\u5165\u662f\u5426\u4e00\u81f4"

    .line 185
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->hideSoftKeyboard()V

    .line 190
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->checkIsStrong(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u6821\u9a8c\u901a\u8fc7"

    .line 191
    invoke-virtual {p0, v2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showNoticeToastOk(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/vondear/rxtool/RxTool;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/vondear/rxtool/RxTool;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->type:I

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePwdPresenter;->changePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    const-string v0, "\u65b0\u5bc6\u7801\u8981\u6c42\uff1a\u957f\u5ea6 8-30 \u4f4d\uff0c\u5fc5\u987b\u5305\u62ec\u5927\u5c0f\u5199\u5b57\u6bcd\u3001\u6570\u5b57\u3001\u7279\u6b8a\u7b26\u53f7\uff0c\u8bf7\u6309\u7167\u8981\u6c42\u8bbe\u7f6e"

    .line 195
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showNoticeToastError(Ljava/lang/String;)V

    return-void
.end method
