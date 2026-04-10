.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections;
.super Ljava/lang/Object;
.source "StockInFragmentDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionStockInFragmentToStockInEditFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;
    .locals 2

    .line 24
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;-><init>(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;ILcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$1;)V

    return-object v0
.end method
