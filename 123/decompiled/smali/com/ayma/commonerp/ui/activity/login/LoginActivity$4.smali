.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showSearchCrossRoadPopup(Ljava/util/List;)V
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

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 254
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->etUserPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vondear/rxtool/RxTool;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadCrossRoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
