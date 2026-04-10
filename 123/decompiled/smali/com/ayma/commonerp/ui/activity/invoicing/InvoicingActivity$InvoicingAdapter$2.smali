.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;
.super Ljava/lang/Object;
.source "InvoicingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/OrderBean;

.field final synthetic val$orderCode:Ljava/lang/String;

.field final synthetic val$orderTotalPrice:D


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;Ljava/lang/String;DLcom/ayma/commonerp/bean/OrderBean;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$orderCode:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$orderTotalPrice:D

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/OrderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$orderCode:Ljava/lang/String;

    aput-object v2, p1, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;->val$orderTotalPrice:D

    .line 530
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "\u5373\u5c06\u8fdb\u884c\u9000\u6b3e\uff0c\u8ba2\u5355\u53f7\uff1a%s\n\u9000\u6b3e\u91d1\u989d\uff1a%s\n\n\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    .line 529
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
