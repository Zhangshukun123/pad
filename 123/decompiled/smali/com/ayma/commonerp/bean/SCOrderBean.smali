.class public Lcom/ayma/commonerp/bean/SCOrderBean;
.super Ljava/lang/Object;
.source "SCOrderBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;
    }
.end annotation


# instance fields
.field private contactsPhone:Ljava/lang/String;

.field private lineOrderId:Ljava/lang/String;

.field private lineOrderNo:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;"
        }
    .end annotation
.end field

.field private oldLineOrderId:Ljava/lang/String;

.field private oldLineOrderNo:Ljava/lang/String;

.field private orderDay:Ljava/lang/String;

.field private prefrentialAmount:Ljava/lang/String;

.field private receiptAmount:Ljava/lang/String;

.field private receivableAmount:Ljava/lang/String;

.field private takeCode:Ljava/lang/String;

.field private totalAmount:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactsPhone()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->contactsPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->lineOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderNo()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->lineOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getOldLineOrderId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->oldLineOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldLineOrderNo()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->oldLineOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDay()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->orderDay:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefrentialAmount()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->prefrentialAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptAmount()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->receiptAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivableAmount()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->receivableAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTakeCode()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->takeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->type:I

    return v0
.end method

.method public setContactsPhone(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->contactsPhone:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->lineOrderId:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->lineOrderNo:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->list:Ljava/util/List;

    return-void
.end method

.method public setOldLineOrderId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->oldLineOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOldLineOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->oldLineOrderNo:Ljava/lang/String;

    return-void
.end method

.method public setOrderDay(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->orderDay:Ljava/lang/String;

    return-void
.end method

.method public setPrefrentialAmount(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->prefrentialAmount:Ljava/lang/String;

    return-void
.end method

.method public setReceiptAmount(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->receiptAmount:Ljava/lang/String;

    return-void
.end method

.method public setReceivableAmount(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->receivableAmount:Ljava/lang/String;

    return-void
.end method

.method public setTakeCode(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->takeCode:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/ayma/commonerp/bean/SCOrderBean;->type:I

    return-void
.end method
