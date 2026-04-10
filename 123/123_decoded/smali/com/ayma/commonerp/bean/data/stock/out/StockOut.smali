.class public Lcom/ayma/commonerp/bean/data/stock/out/StockOut;
.super Ljava/lang/Object;
.source "StockOut.java"


# instance fields
.field private current:I

.field private pages:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end field

.field private searchCount:Z

.field private size:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->current:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->pages:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSearchCount()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->searchCount:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->total:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->current:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->pages:I

    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->records:Ljava/util/List;

    return-void
.end method

.method public setSearchCount(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->searchCount:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->size:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOut;->total:I

    return-void
.end method
