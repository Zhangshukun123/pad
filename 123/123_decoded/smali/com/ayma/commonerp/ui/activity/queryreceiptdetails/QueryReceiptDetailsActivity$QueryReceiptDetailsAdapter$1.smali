.class Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;
.super Ljava/lang/Object;
.source "QueryReceiptDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;I)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 242
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 243
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, p1, v7

    const-string v1, "\u662f\u5426\u5220\u9664\u5546\u54c1\uff1a%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    .line 242
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v7
.end method
