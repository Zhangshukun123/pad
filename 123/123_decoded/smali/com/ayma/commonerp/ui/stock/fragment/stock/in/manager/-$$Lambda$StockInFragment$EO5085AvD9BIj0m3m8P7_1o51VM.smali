.class public final synthetic Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$1:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$1:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->lambda$showPopupSelectDialog$3$StockInFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;ILandroid/view/View;)V

    return-void
.end method
