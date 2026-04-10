.class public Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;
.super Ljava/lang/Object;
.source "StockOutUpdateEvent.java"


# instance fields
.field private outHead:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->position:I

    .line 15
    iput-object p2, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->outHead:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    return-void
.end method


# virtual methods
.method public getOutHead()Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->outHead:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->position:I

    return v0
.end method

.method public setOutHead(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->outHead:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;->position:I

    return-void
.end method
