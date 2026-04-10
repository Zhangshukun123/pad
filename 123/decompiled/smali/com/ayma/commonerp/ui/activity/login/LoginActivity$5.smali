.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 265
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 274
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$000(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->clear()V

    return-void

    .line 277
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->searchCrossRoad(Ljava/lang/String;)V

    return-void
.end method
