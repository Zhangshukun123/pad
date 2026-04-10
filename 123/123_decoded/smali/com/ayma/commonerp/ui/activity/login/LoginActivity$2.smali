.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->checkRunningMode()V
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

    .line 195
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 199
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->switchToProductEnvironment()V

    return-void
.end method
