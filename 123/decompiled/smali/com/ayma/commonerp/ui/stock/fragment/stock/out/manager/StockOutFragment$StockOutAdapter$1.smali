.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 666
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->isUpload()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 667
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->isCommit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    const-string v2, "1"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;I)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    const-string v2, "2"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    const-string v2, "0"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
