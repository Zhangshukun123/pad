.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;
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

.field final synthetic val$billNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;->val$billNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 596
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;->val$billNo:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "\u5373\u5c06\u64a4\u9500\u5355\u636e\uff1a%s\uff0c\u8bf7\u786e\u8ba4"

    .line 597
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;)V

    const-string v1, ""

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u64a4\u9500"

    .line 596
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
