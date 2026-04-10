.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showInputPayCodeDialog(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field final synthetic val$inputCodeEnable:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->val$inputCodeEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1385
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideLoading()V

    .line 1386
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->val$inputCodeEnable:Z

    if-nez p1, :cond_1

    .line 1387
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const-string v0, "\u5173\u95ed\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 1389
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->setCancelQuery(Z)V

    .line 1391
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1392
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    .line 1393
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDiscount()V

    .line 1395
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
