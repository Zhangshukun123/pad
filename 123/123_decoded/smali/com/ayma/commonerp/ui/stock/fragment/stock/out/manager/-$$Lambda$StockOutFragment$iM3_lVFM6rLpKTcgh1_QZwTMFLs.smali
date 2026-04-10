.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$1:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->lambda$showPopupSelectDialog$5$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILandroid/view/View;)V

    return-void
.end method
