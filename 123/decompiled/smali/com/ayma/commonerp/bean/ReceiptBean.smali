.class public Lcom/ayma/commonerp/bean/ReceiptBean;
.super Ljava/lang/Object;
.source "ReceiptBean.java"


# instance fields
.field private Qty:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsPrice:Ljava/lang/String;

.field private outDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsCode:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->Qty:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsPrice:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->outDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPrice()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDate()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->outDate:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->Qty:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsPrice(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->goodsPrice:Ljava/lang/String;

    return-void
.end method

.method public setOutDate(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->outDate:Ljava/lang/String;

    return-void
.end method

.method public setQty(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ayma/commonerp/bean/ReceiptBean;->Qty:Ljava/lang/String;

    return-void
.end method
