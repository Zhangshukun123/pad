.class public Lcom/ayma/commonerp/bean/SellDetailBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "SellDetailBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/ayma/commonerp/behavior/ComparatorBehavior;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appVersion:Ljava/lang/String;

.field private barcode:Ljava/lang/String;

.field private bigTypeId:Ljava/lang/String;

.field private bigTypeName:Ljava/lang/String;

.field private checkRepeat:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private employeeCode:Ljava/lang/String;

.field private employeeId:Ljava/lang/String;

.field private employeeName:Ljava/lang/String;

.field private fleetId:Ljava/lang/String;

.field private goodsCode:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private listPosition:I

.field private machineModel:Ljava/lang/String;

.field private orderCheckRepeat:Ljava/lang/String;

.field private orderNo:Ljava/lang/String;

.field private outDate:Ljava/lang/String;

.field private paymentType:Ljava/lang/String;

.field private paymentTypeValue:Ljava/lang/String;

.field private prefrentialAmount:D

.field private qty:D

.field private saleType:Ljava/lang/String;

.field private salesPrice:D

.field private scanDate:Ljava/lang/String;

.field private sellTime:Ljava/lang/String;

.field private smallTypeId:Ljava/lang/String;

.field private smallTypeName:Ljava/lang/String;

.field private stockCount:D

.field private storeId:Ljava/lang/String;

.field private supplierId:Ljava/lang/String;

.field private supplierName:Ljava/lang/String;

.field private teamId:Ljava/lang/String;

.field private teamName:Ljava/lang/String;

.field private trainName:Ljava/lang/String;

.field private trainsId:Ljava/lang/String;

.field private uploadStatue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/ayma/commonerp/bean/SellDetailBean$1;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/SellDetailBean$1;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/bean/SellDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->prefrentialAmount:D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->prefrentialAmount:D

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->companyId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->company2Id:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->storeId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentType:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderNo:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeCode:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainsId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->outDate:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->barcode:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsCode:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->appVersion:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->machineModel:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->scanDate:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->checkRepeat:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->sellTime:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderCheckRepeat:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->stockCount:D

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->listPosition:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 488
    :cond_1
    check-cast p1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 489
    iget-object v2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->company2Id:Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getCompany2Id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcode()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTypeId()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->bigTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTypeName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->bigTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRepeat()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->checkRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorAmount()D
    .locals 4

    .line 524
    :try_start_0
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getComparatorGoodsCode()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorGoodsName()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparatorOrderType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorPayType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorPrice()D
    .locals 2

    .line 517
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    return-wide v0
.end method

.method public getComparatorQty()D
    .locals 2

    .line 512
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    return-wide v0
.end method

.method public getComparatorSellTime()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getComparatorSellType()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeCode()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeId()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getFleetId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->fleetId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCode()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getListPosition()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->listPosition:I

    return v0
.end method

.method public getMachineModel()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->machineModel:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCheckRepeat()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderCheckRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDate()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->outDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentTypeValue()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentTypeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefrentialAmount()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->prefrentialAmount:D

    return-wide v0
.end method

.method public getQty()D
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    return-wide v0
.end method

.method public getSaleAmount()Ljava/lang/String;
    .locals 4

    .line 155
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    iget-wide v2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaleType()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesPrice()D
    .locals 2

    .line 397
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    return-wide v0
.end method

.method public getScanDate()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->scanDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSellTime()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->sellTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallTypeId()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallTypeName()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockCount()D
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->stockCount:D

    return-wide v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierId()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierName:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainsId()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatue()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->barcode:Ljava/lang/String;

    return-void
.end method

.method public setBigTypeId(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->bigTypeId:Ljava/lang/String;

    return-void
.end method

.method public setBigTypeName(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->bigTypeName:Ljava/lang/String;

    return-void
.end method

.method public setCheckRepeat(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->checkRepeat:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeCode(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeCode:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeId(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeId:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeName(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeName:Ljava/lang/String;

    return-void
.end method

.method public setFleetId(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->fleetId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setListPosition(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->listPosition:I

    return-void
.end method

.method public setMachineModel(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->machineModel:Ljava/lang/String;

    return-void
.end method

.method public setOrderCheckRepeat(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderCheckRepeat:Ljava/lang/String;

    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderNo:Ljava/lang/String;

    return-void
.end method

.method public setOutDate(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->outDate:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentType:Ljava/lang/String;

    return-void
.end method

.method public setPaymentTypeValue(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentTypeValue:Ljava/lang/String;

    return-void
.end method

.method public setPrefrentialAmount(D)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->prefrentialAmount:D

    return-void
.end method

.method public setQty(D)V
    .locals 0

    .line 393
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    return-void
.end method

.method public setSaleType(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    return-void
.end method

.method public setSalesPrice(D)V
    .locals 0

    .line 401
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    return-void
.end method

.method public setScanDate(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->scanDate:Ljava/lang/String;

    return-void
.end method

.method public setSellTime(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->sellTime:Ljava/lang/String;

    return-void
.end method

.method public setSmallTypeId(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeId:Ljava/lang/String;

    return-void
.end method

.method public setSmallTypeName(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeName:Ljava/lang/String;

    return-void
.end method

.method public setStockCount(D)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->stockCount:D

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setSupplierId(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierId:Ljava/lang/String;

    return-void
.end method

.method public setSupplierName(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierName:Ljava/lang/String;

    return-void
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamId:Ljava/lang/String;

    return-void
.end method

.method public setTeamName(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamName:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainName:Ljava/lang/String;

    return-void
.end method

.method public setTrainsId(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainsId:Ljava/lang/String;

    return-void
.end method

.method public setUploadStatue(Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 229
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 230
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 232
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 233
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->companyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->storeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->saleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->employeeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainsId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->trainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->outDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->barcode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->goodsName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->qty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 251
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->salesPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 252
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->machineModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->scanDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->checkRepeat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->uploadStatue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->teamName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->smallTypeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->supplierId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->sellTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->orderCheckRepeat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->stockCount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 264
    iget p2, p0, Lcom/ayma/commonerp/bean/SellDetailBean;->listPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
