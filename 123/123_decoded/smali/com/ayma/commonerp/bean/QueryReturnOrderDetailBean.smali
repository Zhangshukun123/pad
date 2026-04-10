.class public Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;
.super Ljava/lang/Object;
.source "QueryReturnOrderDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;
    }
.end annotation


# instance fields
.field private authCode:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private employeeId:Ljava/lang/String;

.field private employeeName:Ljava/lang/String;

.field private fleetId:Ljava/lang/String;

.field private fleetName:Ljava/lang/String;

.field private joinData:Ljava/lang/String;

.field private lineOrderId:Ljava/lang/String;

.field private lineOrderNo:Ljava/lang/String;

.field private orderDay:Ljava/lang/String;

.field private orderDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field private outDay:Ljava/lang/String;

.field private paymentType:Ljava/lang/String;

.field private pdaNo:Ljava/lang/String;

.field private pdaVer:Ljava/lang/String;

.field private poundage:Ljava/lang/String;

.field private prefrentialAmount:Ljava/lang/String;

.field private receiptAmount:Ljava/lang/String;

.field private receivableAmount:Ljava/lang/String;

.field private saleChannel:Ljava/lang/String;

.field private salePayState:Ljava/lang/String;

.field private saleType:Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private teamId:Ljava/lang/String;

.field private teamName:Ljava/lang/String;

.field private totalAmount:Ljava/lang/String;

.field private tradeType:Ljava/lang/String;

.field private trainId:Ljava/lang/String;

.field private trainName:Ljava/lang/String;

.field private transactionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeId()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->employeeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->employeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getFleetId()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->fleetId:Ljava/lang/String;

    return-object v0
.end method

.method public getFleetName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->fleetName:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinData()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->joinData:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->lineOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOrderNo()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->lineOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDay()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->orderDay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->orderDetails:Ljava/util/List;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaNo()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->pdaNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaVer()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->pdaVer:Ljava/lang/String;

    return-object v0
.end method

.method public getPoundage()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->poundage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefrentialAmount()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->prefrentialAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptAmount()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->receiptAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivableAmount()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->receivableAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleChannel()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->saleChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePayState()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->salePayState:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleType()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->saleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainId()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->trainId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNo()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->transactionNo:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeId(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->employeeId:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeName(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->employeeName:Ljava/lang/String;

    return-void
.end method

.method public setFleetId(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->fleetId:Ljava/lang/String;

    return-void
.end method

.method public setFleetName(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->fleetName:Ljava/lang/String;

    return-void
.end method

.method public setJoinData(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->joinData:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->lineOrderId:Ljava/lang/String;

    return-void
.end method

.method public setLineOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->lineOrderNo:Ljava/lang/String;

    return-void
.end method

.method public setOrderDay(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->orderDay:Ljava/lang/String;

    return-void
.end method

.method public setOrderDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;",
            ">;)V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->orderDetails:Ljava/util/List;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->paymentType:Ljava/lang/String;

    return-void
.end method

.method public setPdaNo(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->pdaNo:Ljava/lang/String;

    return-void
.end method

.method public setPdaVer(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->pdaVer:Ljava/lang/String;

    return-void
.end method

.method public setPoundage(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->poundage:Ljava/lang/String;

    return-void
.end method

.method public setPrefrentialAmount(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->prefrentialAmount:Ljava/lang/String;

    return-void
.end method

.method public setReceiptAmount(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->receiptAmount:Ljava/lang/String;

    return-void
.end method

.method public setReceivableAmount(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->receivableAmount:Ljava/lang/String;

    return-void
.end method

.method public setSaleChannel(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->saleChannel:Ljava/lang/String;

    return-void
.end method

.method public setSalePayState(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->salePayState:Ljava/lang/String;

    return-void
.end method

.method public setSaleType(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->saleType:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->teamId:Ljava/lang/String;

    return-void
.end method

.method public setTeamName(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->teamName:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setTradeType(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->tradeType:Ljava/lang/String;

    return-void
.end method

.method public setTrainId(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->trainId:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->trainName:Ljava/lang/String;

    return-void
.end method

.method public setTransactionNo(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean;->transactionNo:Ljava/lang/String;

    return-void
.end method
