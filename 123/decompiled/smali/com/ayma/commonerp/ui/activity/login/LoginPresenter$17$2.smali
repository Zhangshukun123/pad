.class Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$2;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 860
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 861
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17$2;->this$1:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter$17;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->access$7200(Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginContact$ILoginView;->toMenu()V

    return-void
.end method
