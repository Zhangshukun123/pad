.class Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;
.super Ljava/lang/Object;
.source "QueryReceiptDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;

    iget p2, p2, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->removeData(I)V

    .line 249
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method
