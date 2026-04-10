.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->registerReceiver()V
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

    .line 834
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u626b\u63cf\u5f02\u5e38"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 840
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->dealScanResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
