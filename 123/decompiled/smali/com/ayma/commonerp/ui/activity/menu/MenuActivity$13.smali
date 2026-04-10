.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1502
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateLoginStatue(Z)V

    .line 1503
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    .line 1504
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->finishActivity()V

    return-void
.end method
