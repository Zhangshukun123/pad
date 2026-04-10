.class public Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;
.super Ljava/lang/Object;
.source "StockInUpdateEvent.java"


# instance fields
.field private inHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->position:I

    .line 14
    iput-object p2, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->inHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-void
.end method


# virtual methods
.method public getInHead()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->inHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->position:I

    return v0
.end method

.method public setInHead(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->inHead:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->position:I

    return-void
.end method
