.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 683
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 686
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 688
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 689
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const-string p3, "\u5546\u54c1\u6761\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return p2

    .line 693
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 694
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const-string p3, "\u9500\u552e\u6570\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return p2

    .line 698
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p1, p2, :cond_4

    .line 699
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const-string p3, "\u9500\u552e\u6570\u91cf\u4e0d\u80fd\u5c0f\u4e8e1"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 700
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return p2

    .line 703
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideSoftKeyboard()V

    .line 704
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getReturnStatue()Z

    move-result v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v6, "\u73b0\u91d1"

    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->searchGoods(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return p2
.end method
