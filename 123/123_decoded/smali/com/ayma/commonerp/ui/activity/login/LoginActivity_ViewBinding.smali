.class public Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

.field private view7f080087:Landroid/view/View;

.field private view7f080088:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    .line 35
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080089

    const-string v2, "field \'etUserCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08008e

    const-string v2, "field \'tvUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    .line 37
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f08008a

    const-string v2, "field \'etUserPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    const v0, 0x7f080087

    const-string v1, "field \'alBtnLogin\' and method \'onBtnLoginClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'alBtnLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->alBtnLogin:Landroid/widget/Button;

    .line 40
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080087:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080090

    const-string v2, "field \'alTvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->alTvVersion:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e5

    const-string v2, "field \'btnLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->btnLeft:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e8

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvTitle:Landroid/widget/TextView;

    .line 50
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f08008b

    const-string v2, "field \'tilUserCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserCode:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f08008c

    const-string v2, "field \'tilUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f08008d

    const-string v2, "field \'tilUserPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserPwd:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f080088

    const-string v1, "method \'onBtnSnClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080088:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    .line 70
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    .line 71
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    .line 73
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->alBtnLogin:Landroid/widget/Button;

    .line 74
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->alTvVersion:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->btnLeft:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvTitle:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserCode:Lcom/google/android/material/textfield/TextInputLayout;

    .line 78
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 79
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tilUserPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080087:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080087:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080088:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity_ViewBinding;->view7f080088:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
