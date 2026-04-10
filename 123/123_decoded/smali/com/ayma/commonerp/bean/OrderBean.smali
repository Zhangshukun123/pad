.class public Lcom/ayma/commonerp/bean/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"

# interfaces
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;
    }
.end annotation


# static fields
.field public static final ORDER_STATE_NORMAL:I = 0x0

.field public static final ORDER_STATE_REFUND:I = 0x1


# instance fields
.field private coachNo:Ljava/lang/String;

.field private contacts:Ljava/lang/String;

.field private contactsPhone:Ljava/lang/String;

.field private invoiceState:Ljava/lang/String;

.field private orderCode:Ljava/lang/String;

.field private orderDate:Ljava/lang/String;

.field private orderDay:Ljava/lang/String;

.field private orderDetailed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;"
        }
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field private orderState:I

.field private orderTotalPrice:D

.field private payChannelName:Ljava/lang/String;

.field private salePayStateName:Ljava/lang/String;

.field private seatNo:Ljava/lang/String;

.field private trainCode:Ljava/lang/String;

.field private transactionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderState:I

    return-void
.end method


# virtual methods
.method public canInvoice()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->invoiceState:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorAmount()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorOrderType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorPayType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparatorPrice()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComparatorSellTime()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDate:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorSellType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContacts()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->contacts:Ljava/lang/String;

    return-object v0
.end method

.method public getContactsPhone()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->contactsPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceState()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->invoiceState:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCode()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDay()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDetailed:Ljava/util/List;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderState()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderState:I

    return v0
.end method

.method public getOrderTotalPrice()D
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderTotalPrice:D

    return-wide v0
.end method

.method public getPayChannelName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->payChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePayStateName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->salePayStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->seatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainCode()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->trainCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNo()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->transactionNo:Ljava/lang/String;

    return-object v0
.end method

.method public is12306()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->payChannelName:Ljava/lang/String;

    const-string v1, "12306"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCashPay()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ayma/commonerp/bean/OrderBean;->payChannelName:Ljava/lang/String;

    const-string v1, "\u73b0\u91d1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setContacts(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->contacts:Ljava/lang/String;

    return-void
.end method

.method public setContactsPhone(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->contactsPhone:Ljava/lang/String;

    return-void
.end method

.method public setInvoiceState(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->invoiceState:Ljava/lang/String;

    return-void
.end method

.method public setOrderCode(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderCode:Ljava/lang/String;

    return-void
.end method

.method public setOrderDate(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDate:Ljava/lang/String;

    return-void
.end method

.method public setOrderDay(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDay:Ljava/lang/String;

    return-void
.end method

.method public setOrderDetailed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderDetailed:Ljava/util/List;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderState(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderState:I

    return-void
.end method

.method public setOrderTotalPrice(D)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->orderTotalPrice:D

    return-void
.end method

.method public setPayChannelName(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->payChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSalePayStateName(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->salePayStateName:Ljava/lang/String;

    return-void
.end method

.method public setSeatNo(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->seatNo:Ljava/lang/String;

    return-void
.end method

.method public setTrainCode(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->trainCode:Ljava/lang/String;

    return-void
.end method

.method public setTransactionNo(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ayma/commonerp/bean/OrderBean;->transactionNo:Ljava/lang/String;

    return-void
.end method
