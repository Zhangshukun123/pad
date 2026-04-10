.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    const-string p3, "\u8bf7\u8f93\u5165\u5de5\u53f7"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showToast(Ljava/lang/String;)V

    return p2

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p3}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->queryUser(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
