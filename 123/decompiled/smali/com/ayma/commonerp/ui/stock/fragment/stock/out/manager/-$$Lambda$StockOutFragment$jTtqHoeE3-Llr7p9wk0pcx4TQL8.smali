.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->lambda$showPopupSelectDialog$2$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
