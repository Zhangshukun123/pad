.class Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;
.super Ljava/lang/Object;
.source "RevisePasswordActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtOldPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    const-string p2, "\u8bf7\u8f93\u5165\u539f\u5bc6\u7801"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->rpaEtConfirmPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->submit()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
