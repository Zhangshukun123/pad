.class public Lcom/ayma/commonerp/bean/sale12306/OrderHead;
.super Ljava/lang/Object;
.source "OrderHead.java"


# instance fields
.field private lineOrderId:Ljava/lang/String;

.field private lineOrderNo:Ljava/lang/String;

.field private oldLineOrderNo:Ljava/lang/String;

.field private orderDate:Ljava/lang/String;

.field private orderDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderDetail;",
            ">;"
        }
    .end annotation
.end field

.field private postMark:Ljava/lang/String;

.field private select:Z

.field private serviceDate:Ljava/lang/String;

.field private startTrainDate:Ljava/lang/String;

.field private totalAmount:Ljava/lang/String;

.field private trainCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineOrderId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->lineOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderNo()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->lineOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOldLineOrderNo()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->oldLineOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->orderDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderDetail;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->orderDetails:Ljava/util/List;

    return-object v0
.end method

.method public getPostMark()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->postMark:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDate()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->serviceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTrainDate()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->startTrainDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainCode()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->trainCode:Ljava/lang/String;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->postMark:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->select:Z

    return v0
.end method

.method public setCommitted()V
    .locals 1

    const-string v0, "1"

    .line 27
    iput-object v0, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->postMark:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->lineOrderId:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->lineOrderNo:Ljava/lang/String;

    return-void
.end method

.method public setOldLineOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->oldLineOrderNo:Ljava/lang/String;

    return-void
.end method

.method public setOrderDate(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->orderDate:Ljava/lang/String;

    return-void
.end method

.method public setOrderDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderDetail;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->orderDetails:Ljava/util/List;

    return-void
.end method

.method public setPostMark(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->postMark:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->select:Z

    return-void
.end method

.method public setServiceDate(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->serviceDate:Ljava/lang/String;

    return-void
.end method

.method public setStartTrainDate(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->startTrainDate:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setTrainCode(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->trainCode:Ljava/lang/String;

    return-void
.end method
