.class public Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RevisePasswordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

.field private view7f08061f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    .line 32
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080622

    const-string v2, "field \'rpaEtOldPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 33
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080621

    const-string v2, "field \'rpaEtNewPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 34
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080620

    const-string v2, "field \'rpaEtConfirmPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f08061f

    const-string v1, "field \'rpaBtnSubmit\' and method \'onBtnSubmitClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'rpaBtnSubmit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaBtnSubmit:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->view7f08061f:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f080625

    const-string v2, "field \'tilOldPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilOldPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f080624

    const-string v2, "field \'tilNewPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilNewPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f080623

    const-string v2, "field \'tilConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilConfirm:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    .line 56
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 57
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtNewPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 58
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 59
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaBtnSubmit:Landroid/widget/Button;

    .line 60
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilOldPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 61
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilNewPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->tilConfirm:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->view7f08061f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity_ViewBinding;->view7f08061f:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
