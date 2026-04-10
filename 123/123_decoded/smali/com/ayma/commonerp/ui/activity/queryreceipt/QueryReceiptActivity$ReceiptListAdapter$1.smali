.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;
.super Ljava/lang/Object;
.source "QueryReceiptActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

.field final synthetic val$billNo:Ljava/lang/String;

.field final synthetic val$createShowName:Ljava/lang/String;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

.field final synthetic val$outDay:Ljava/lang/String;

.field final synthetic val$receiptType:Ljava/lang/String;

.field final synthetic val$sourceType:Ljava/lang/String;

.field final synthetic val$storeTypeName:Ljava/lang/String;

.field final synthetic val$supplierNameShort:Ljava/lang/String;

.field final synthetic val$trainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$supplierNameShort:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$billNo:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$createShowName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$receiptType:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$sourceType:Ljava/lang/String;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$storeTypeName:Ljava/lang/String;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$trainName:Ljava/lang/String;

    iput-object p9, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$outDay:Ljava/lang/String;

    iput-object p10, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 297
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$supplierNameShort:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    .line 298
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$billNo:Ljava/lang/String;

    aput-object v6, p1, v5

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$createShowName:Ljava/lang/String;

    aput-object v5, p1, v7

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$receiptType:Ljava/lang/String;

    aput-object v5, p1, v4

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$sourceType:Ljava/lang/String;

    aput-object v4, p1, v3

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$storeTypeName:Ljava/lang/String;

    aput-object v3, p1, v2

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$trainName:Ljava/lang/String;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$outDay:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "\u662f\u5426\u5220\u9664\u5355\u636e\uff1a\n\u5355\u636e\u7f16\u53f7\uff1a%s\n\u5236\u4f5c\u4eba\u5458\uff1a%s\n\u5355\u636e\u7c7b\u578b\uff1a%s\n\u5355\u636e\u6765\u6e90\uff1a%s\n\u4ed3\u5e93\u540d\u79f0\uff1a%s\n\u51fa\u4e58\u8f66\u6b21\uff1a%s\n\u51fa\u4e58\u65e5\u671f\uff1a%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v6, [Ljava/lang/Object;

    .line 301
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$billNo:Ljava/lang/String;

    aput-object v6, p1, v5

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$createShowName:Ljava/lang/String;

    aput-object v5, p1, v7

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$receiptType:Ljava/lang/String;

    aput-object v5, p1, v4

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$sourceType:Ljava/lang/String;

    aput-object v4, p1, v3

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$supplierNameShort:Ljava/lang/String;

    aput-object v3, p1, v2

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$trainName:Ljava/lang/String;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->val$outDay:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "\u662f\u5426\u5220\u9664\u5355\u636e\uff1a\n\u5355\u636e\u7f16\u53f7\uff1a%s\n\u5236\u4f5c\u4eba\u5458\uff1a%s\n\u5355\u636e\u7c7b\u578b\uff1a%s\n\u5355\u636e\u6765\u6e90\uff1a%s\n\u4f9b\u2000\u5e94\u2000\u5546\uff1a%s\n\u51fa\u4e58\u8f66\u6b21\uff1a%s\n\u51fa\u4e58\u65e5\u671f\uff1a%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 304
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;)V

    const-string v1, ""

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v7
.end method
