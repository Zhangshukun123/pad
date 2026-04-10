.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showConfirmDialog(Ljava/lang/String;)V
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

    .line 430
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vondear/rxtool/RxTool;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
