.class public Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;
.super Lorg/litepal/crud/LitePalSupport;
.source "StockReceiptInHead.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseClass:Ljava/lang/String;

.field private baseClassName:Ljava/lang/String;

.field private billDay:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private checkOutBillId:Ljava/lang/String;

.field private checkOutMark:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private companyName2:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private createShowName:Ljava/lang/String;

.field private createUser:Ljava/lang/String;

.field private deleteDate:Ljava/lang/String;

.field private deleteUser:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private flag1:Ljava/lang/String;

.field private flag10:Ljava/lang/String;

.field private flag2:Ljava/lang/String;

.field private flag3:Ljava/lang/String;

.field private flag4:Ljava/lang/String;

.field private flag5:Ljava/lang/String;

.field private flag6:Ljava/lang/String;

.field private flag7:Ljava/lang/String;

.field private flag8:Ljava/lang/String;

.field private flag9:Ljava/lang/String;

.field private handFlag:Ljava/lang/String;

.field private lastModifyDate:Ljava/lang/String;

.field private lastModifyUser:Ljava/lang/String;

.field private opStoreType:Ljava/lang/String;

.field private otherCompanyId:Ljava/lang/String;

.field private otherCompanyName:Ljava/lang/String;

.field private payBillId:Ljava/lang/String;

.field private payMark:Ljava/lang/String;

.field private postDate:Ljava/lang/String;

.field private postMark:Ljava/lang/String;

.field private postShowName:Ljava/lang/String;

.field private postUserName:Ljava/lang/String;

.field private sourceBillId:Ljava/lang/String;

.field private sourceBillNo:Ljava/lang/String;

.field private sourceType:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeInId:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private storeTypeName:Ljava/lang/String;

.field private supplierId:Ljava/lang/String;

.field private supplierName:Ljava/lang/String;

.field private trainName:Ljava/lang/String;

.field private validFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead$1;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead$1;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, "-3"

    .line 35
    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, "-3"

    .line 35
    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName2:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClassName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeTypeName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeInId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billNo:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billDay:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->company2Id:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeId:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClass:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeType:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->opStoreType:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->trainName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillNo:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->handFlag:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postDate:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postUserName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postShowName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payMark:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payBillId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutMark:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutBillId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->validFlag:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->description:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createUser:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createShowName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createDate:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyUser:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyDate:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteUser:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteDate:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag1:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag2:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag3:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag4:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag5:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag6:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag7:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag8:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag9:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag10:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseClass()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClass:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseClassName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillDay()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOutBillId()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOutMark()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutMark:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName2()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName2:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateShowName()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteDate()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteUser()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag1()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag1:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag10()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag10:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag2:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag3:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag4:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag5:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag6()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag6:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag7()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag7:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag8()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag8:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag9()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag9:Ljava/lang/String;

    return-object v0
.end method

.method public getHandFlag()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->handFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyDate()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyUser()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getOpStoreType()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->opStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherCompanyId()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyId:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherCompanyName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayBillId()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayMark()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payMark:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDate()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPostMark()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    return-object v0
.end method

.method public getPostShowName()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostUserName()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBillId()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBillNo()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreInId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeInId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTypeName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierId()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public isCommit()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUpload()Z
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setBaseClass(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClass:Ljava/lang/String;

    return-void
.end method

.method public setBaseClassName(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClassName:Ljava/lang/String;

    return-void
.end method

.method public setBillDay(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billDay:Ljava/lang/String;

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setCheckOutBillId(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutBillId:Ljava/lang/String;

    return-void
.end method

.method public setCheckOutMark(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutMark:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName2(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName2:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setCreateShowName(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createShowName:Ljava/lang/String;

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setDeleteDate(Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteDate:Ljava/lang/String;

    return-void
.end method

.method public setDeleteUser(Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteUser:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlag1(Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag1:Ljava/lang/String;

    return-void
.end method

.method public setFlag10(Ljava/lang/String;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag10:Ljava/lang/String;

    return-void
.end method

.method public setFlag2(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag2:Ljava/lang/String;

    return-void
.end method

.method public setFlag3(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag3:Ljava/lang/String;

    return-void
.end method

.method public setFlag4(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag4:Ljava/lang/String;

    return-void
.end method

.method public setFlag5(Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag5:Ljava/lang/String;

    return-void
.end method

.method public setFlag6(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag6:Ljava/lang/String;

    return-void
.end method

.method public setFlag7(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag7:Ljava/lang/String;

    return-void
.end method

.method public setFlag8(Ljava/lang/String;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag8:Ljava/lang/String;

    return-void
.end method

.method public setFlag9(Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag9:Ljava/lang/String;

    return-void
.end method

.method public setHandFlag(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->handFlag:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyDate(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyDate:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyUser(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyUser:Ljava/lang/String;

    return-void
.end method

.method public setOpStoreType(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->opStoreType:Ljava/lang/String;

    return-void
.end method

.method public setOtherCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyId:Ljava/lang/String;

    return-void
.end method

.method public setOtherCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyName:Ljava/lang/String;

    return-void
.end method

.method public setPayBillId(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payBillId:Ljava/lang/String;

    return-void
.end method

.method public setPayMark(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payMark:Ljava/lang/String;

    return-void
.end method

.method public setPostDate(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postDate:Ljava/lang/String;

    return-void
.end method

.method public setPostMark(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    return-void
.end method

.method public setPostShowName(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postShowName:Ljava/lang/String;

    return-void
.end method

.method public setPostUserName(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postUserName:Ljava/lang/String;

    return-void
.end method

.method public setSourceBillId(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillId:Ljava/lang/String;

    return-void
.end method

.method public setSourceBillNo(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillNo:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceType:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreInId(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeInId:Ljava/lang/String;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setStoreTypeName(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeTypeName:Ljava/lang/String;

    return-void
.end method

.method public setSupplierId(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierId:Ljava/lang/String;

    return-void
.end method

.method public setSupplierName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierName:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->trainName:Ljava/lang/String;

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->validFlag:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 546
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyName2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeTypeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeInId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->billDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->companyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->baseClass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->storeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->opStoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->otherCompanyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->trainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->supplierId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->sourceBillNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->handFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->postShowName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->payBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->checkOutBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->validFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createShowName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->createDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->lastModifyDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->deleteDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag7:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag8:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag9:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->flag10:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
