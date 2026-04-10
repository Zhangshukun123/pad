.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;
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

.field final synthetic val$discountAmount:D

.field final synthetic val$inputCodeEnable:Z

.field final synthetic val$payMoney:D

.field final synthetic val$saleTypeCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;ZLjava/lang/String;DD)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$inputCodeEnable:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$saleTypeCode:Ljava/lang/String;

    iput-wide p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$payMoney:D

    iput-wide p6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$discountAmount:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1403
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1406
    :cond_0
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$inputCodeEnable:Z

    if-eqz p1, :cond_2

    .line 1407
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1409
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const-string v0, "\u652f\u4ed8\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 1410
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->setPayDialogBtnEnable(Z)V

    return-void

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->setPayDialogBtnEnable(Z)V

    .line 1414
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->setPayQueryEnable(Z)V

    .line 1415
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0501e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1417
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0501ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1418
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u4e2d\uff0c\u8bf7\u7b49\u5f85"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1420
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$saleTypeCode:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$payMoney:D

    iget-wide v6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;->val$discountAmount:D

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->pay(Ljava/lang/String;Ljava/lang/String;DD)V

    :cond_2
    return-void
.end method
