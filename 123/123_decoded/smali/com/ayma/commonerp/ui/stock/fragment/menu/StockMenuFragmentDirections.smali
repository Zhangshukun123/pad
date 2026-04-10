.class public Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuFragmentDirections;
.super Ljava/lang/Object;
.source "StockMenuFragmentDirections.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionStockMenuToSignOutFragment()Landroidx/navigation/NavDirections;
    .locals 2

    .line 19
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f080044

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method

.method public static actionStockMenuToStockInFragment()Landroidx/navigation/NavDirections;
    .locals 2

    .line 29
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f080045

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method

.method public static actionStockMenuToStockOutFragment()Landroidx/navigation/NavDirections;
    .locals 2

    .line 24
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f080046

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method

.method public static actionStockMenuToStockQueryReceiptFragment()Landroidx/navigation/NavDirections;
    .locals 2

    .line 14
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f080047

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method
