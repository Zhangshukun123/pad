.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;
.super Ljava/lang/Object;
.source "StockInEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1044
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showChangeGoodsDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;I)V

    return-void
.end method
