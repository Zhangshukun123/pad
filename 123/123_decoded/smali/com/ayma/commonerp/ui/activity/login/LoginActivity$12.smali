.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$12;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->confirmDownloadPickingList()V
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

    .line 477
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 480
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 481
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->downloadPickingList(Z)V

    return-void
.end method
