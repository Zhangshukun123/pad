.class Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showEditToOnlineMoney(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

.field final synthetic val$canToOnline:D

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$etMoney:Lcom/ayma/base/widget/ClearEditText;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Lcom/ayma/base/widget/ClearEditText;DLjava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$etMoney:Lcom/ayma/base/widget/ClearEditText;

    iput-wide p3, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$canToOnline:D

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 285
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$etMoney:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    const-string v0, "\u8bf7\u8f93\u5165\u8981\u8f6c\u5165\u7ebf\u4e0a\u7684\u91d1\u989d"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$etMoney:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 292
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    const-string v0, "\u8f6c\u5165\u7ebf\u4e0a\u7684\u91d1\u989d\u81f3\u5c11\u8981\u5927\u4e8e0\u5143"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_1
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$canToOnline:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 296
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    const-string v0, "\u5c06\u8981\u8f6c\u7ebf\u4e0a\u7684\u91d1\u989d\u8d85\u8fc7\u6700\u591a\u53ef\u8f6c\u91d1\u989d\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->onlinePay(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
