.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections;
.super Ljava/lang/Object;
.source "StockOutFragmentDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionStockOutFragmentToStockOutEditFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;
    .locals 2

    .line 24
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;-><init>(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$1;)V

    return-object v0
.end method
