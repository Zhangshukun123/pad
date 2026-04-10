.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 715
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 716
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)Z

    return p2

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "neverShowCashReturnTips"

    invoke-static {p1, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 721
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showConfirmCashReturnTips(Z)V

    return p2

    .line 724
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showConfirmReturnClearList(Z)V

    :cond_2
    return p2
.end method
