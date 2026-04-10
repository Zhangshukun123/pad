.class public final synthetic Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/QueryReceiptBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Lcom/ayma/commonerp/bean/QueryReceiptBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;->f$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;->f$1:Lcom/ayma/commonerp/bean/QueryReceiptBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;->f$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;->f$1:Lcom/ayma/commonerp/bean/QueryReceiptBean;

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->lambda$onBindViewHolder$0$QueryReceiptActivity$ReceiptListAdapter(Lcom/ayma/commonerp/bean/QueryReceiptBean;Landroid/view/View;)V

    return-void
.end method
