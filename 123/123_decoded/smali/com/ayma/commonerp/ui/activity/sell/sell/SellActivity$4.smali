.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showConfirmCashReturnTips(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Landroid/app/AlertDialog;Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$cb:Landroid/widget/CheckBox;

    iput-boolean p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 549
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 550
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "neverShowCashReturnTips"

    invoke-static {p1, v1, v0}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;->val$isChecked:Z

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showConfirmReturnClearList(Z)V

    return-void
.end method
