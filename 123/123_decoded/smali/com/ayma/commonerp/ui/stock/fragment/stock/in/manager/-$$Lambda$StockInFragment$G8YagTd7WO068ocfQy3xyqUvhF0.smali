.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

.field public final synthetic f$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;->f$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;->f$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->lambda$showPopupSelectDialog$0$StockInFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;Landroid/view/View;)V

    return-void
.end method
