.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;
.super Ljava/lang/Object;
.source "StockInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 550
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isUpload()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isCommit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    return-void

    .line 557
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    return-void

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    return-void
.end method
