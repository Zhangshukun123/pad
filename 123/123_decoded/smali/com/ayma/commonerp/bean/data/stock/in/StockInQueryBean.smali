.class public Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;
.super Ljava/lang/Object;
.source "StockInQueryBean.java"


# instance fields
.field private current:I

.field private pages:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation
.end field

.field private searchCount:Ljava/lang/Boolean;

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
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->current:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->pages:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSearchCount()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->searchCount:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->total:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->current:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->pages:I

    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->records:Ljava/util/List;

    return-void
.end method

.method public setSearchCount(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->searchCount:Ljava/lang/Boolean;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->size:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockInQueryBean;->total:I

    return-void
.end method
