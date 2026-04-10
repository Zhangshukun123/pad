.class public Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
.super Lorg/litepal/crud/LitePalSupport;
.source "StockReceiptOutHead.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final COMMIT_STATUE_COMMIT:Ljava/lang/String; = "1"

.field public static final COMMIT_STATUE_NOT:Ljava/lang/String; = "0"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPLOAD_STATUE_NOT:I = 0x0

.field public static final UPLOAD_STATUE_UPLOADED:I = 0x1


# instance fields
.field private autoMark:Ljava/lang/String;

.field private baseClass:Ljava/lang/String;

.field private baseClassName:Ljava/lang/String;

.field private billDay:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private checkOutBillId:Ljava/lang/String;

.field private checkOutMark:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private company2Name:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

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

.field private fleetId:Ljava/lang/String;

.field private lastModifyDate:Ljava/lang/String;

.field private lastModifyUser:Ljava/lang/String;

.field private opStoreType:Ljava/lang/String;

.field private otherCompanyName:Ljava/lang/String;

.field private outDay:Ljava/lang/String;

.field private payBillId:Ljava/lang/String;

.field private payMark:Ljava/lang/String;

.field private postDate:Ljava/lang/String;

.field private postMark:Ljava/lang/String;

.field private postShowName:Ljava/lang/String;

.field private postUserName:Ljava/lang/String;

.field private signDate:Ljava/lang/String;

.field private signMark:Ljava/lang/String;

.field private signShowName:Ljava/lang/String;

.field private signUserName:Ljava/lang/String;

.field private sourceBillId:Ljava/lang/String;

.field private sourceType:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private storeOutD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation
.end field

.field private storeOutId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private storeTypeName:Ljava/lang/String;

.field private teamId:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private toBaseClass:Ljava/lang/String;

.field private toCompany2Id:Ljava/lang/String;

.field private toId:Ljava/lang/String;

.field private toStoreType:Ljava/lang/String;

.field private toType:Ljava/lang/String;

.field private trainCode:Ljava/lang/String;

.field private trainId:Ljava/lang/String;

.field private trainName:Ljava/lang/String;

.field private upOutDay:Ljava/lang/String;

.field private upTrainCode:Ljava/lang/String;

.field private uploadStatue:I

.field private validFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead$1;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead$1;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billNo:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billDay:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Id:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClass:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeType:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->opStoreType:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toType:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toId:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toCompany2Id:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toBaseClass:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toStoreType:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->fleetId:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->teamId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainCode:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->outDay:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upTrainCode:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upOutDay:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->autoMark:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signMark:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signDate:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signUserName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signShowName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceType:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceBillId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postMark:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postDate:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postUserName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postShowName:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payMark:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payBillId:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutMark:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutBillId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->validFlag:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->description:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createUser:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createShowName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createDate:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyUser:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyDate:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteUser:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteDate:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag1:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag2:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag3:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag4:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag5:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag6:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag7:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag8:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag9:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag10:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Name:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->otherCompanyName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClassName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeTypeName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->templateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoMark()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->autoMark:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseClass()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClass:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseClassName()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillDay()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOutBillId()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOutMark()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutMark:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Name()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateShowName()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteDate()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteUser()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag1()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag1:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag10()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag10:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag2:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag3:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag4:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag5:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag6()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag6:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag7()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag7:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag8()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag8:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag9()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag9:Ljava/lang/String;

    return-object v0
.end method

.method public getFleetId()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->fleetId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyDate()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyUser()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getOpStoreType()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->opStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherCompanyName()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->otherCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getPayBillId()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayMark()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payMark:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDate()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPostMark()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postMark:Ljava/lang/String;

    return-object v0
.end method

.method public getPostShowName()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostUserName()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignDate()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSignMark()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signMark:Ljava/lang/String;

    return-object v0
.end method

.method public getSignShowName()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignUserName()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBillId()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceBillId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreOutD()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutD:Ljava/util/List;

    return-object v0
.end method

.method public getStoreOutId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTypeName()Ljava/lang/String;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public getToBaseClass()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toBaseClass:Ljava/lang/String;

    return-object v0
.end method

.method public getToCompany2Id()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toCompany2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getToId()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public getToStoreType()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getToType()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toType:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainCode()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainId()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpOutDay()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upOutDay:Ljava/lang/String;

    return-object v0
.end method

.method public getUpTrainCode()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upTrainCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatue()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    return v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public isCommit()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postMark:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUpload()Z
    .locals 2

    .line 190
    iget v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAutoMark(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->autoMark:Ljava/lang/String;

    return-void
.end method

.method public setBaseClass(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClass:Ljava/lang/String;

    return-void
.end method

.method public setBaseClassName(Ljava/lang/String;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClassName:Ljava/lang/String;

    return-void
.end method

.method public setBillDay(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billDay:Ljava/lang/String;

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setCheckOutBillId(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutBillId:Ljava/lang/String;

    return-void
.end method

.method public setCheckOutMark(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutMark:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Name(Ljava/lang/String;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Name:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setCreateShowName(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createShowName:Ljava/lang/String;

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setDeleteDate(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteDate:Ljava/lang/String;

    return-void
.end method

.method public setDeleteUser(Ljava/lang/String;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteUser:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlag1(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag1:Ljava/lang/String;

    return-void
.end method

.method public setFlag10(Ljava/lang/String;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag10:Ljava/lang/String;

    return-void
.end method

.method public setFlag2(Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag2:Ljava/lang/String;

    return-void
.end method

.method public setFlag3(Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag3:Ljava/lang/String;

    return-void
.end method

.method public setFlag4(Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag4:Ljava/lang/String;

    return-void
.end method

.method public setFlag5(Ljava/lang/String;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag5:Ljava/lang/String;

    return-void
.end method

.method public setFlag6(Ljava/lang/String;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag6:Ljava/lang/String;

    return-void
.end method

.method public setFlag7(Ljava/lang/String;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag7:Ljava/lang/String;

    return-void
.end method

.method public setFlag8(Ljava/lang/String;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag8:Ljava/lang/String;

    return-void
.end method

.method public setFlag9(Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag9:Ljava/lang/String;

    return-void
.end method

.method public setFleetId(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->fleetId:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyDate(Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyDate:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyUser(Ljava/lang/String;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyUser:Ljava/lang/String;

    return-void
.end method

.method public setOpStoreType(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->opStoreType:Ljava/lang/String;

    return-void
.end method

.method public setOtherCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->otherCompanyName:Ljava/lang/String;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setPayBillId(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payBillId:Ljava/lang/String;

    return-void
.end method

.method public setPayMark(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payMark:Ljava/lang/String;

    return-void
.end method

.method public setPostDate(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postDate:Ljava/lang/String;

    return-void
.end method

.method public setPostMark(Ljava/lang/String;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postMark:Ljava/lang/String;

    return-void
.end method

.method public setPostShowName(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postShowName:Ljava/lang/String;

    return-void
.end method

.method public setPostUserName(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postUserName:Ljava/lang/String;

    return-void
.end method

.method public setSignDate(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signDate:Ljava/lang/String;

    return-void
.end method

.method public setSignMark(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signMark:Ljava/lang/String;

    return-void
.end method

.method public setSignShowName(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signShowName:Ljava/lang/String;

    return-void
.end method

.method public setSignUserName(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signUserName:Ljava/lang/String;

    return-void
.end method

.method public setSourceBillId(Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceBillId:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceType:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setStoreOutD(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutD:Ljava/util/List;

    return-void
.end method

.method public setStoreOutId(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutId:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setStoreTypeName(Ljava/lang/String;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeTypeName:Ljava/lang/String;

    return-void
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->teamId:Ljava/lang/String;

    return-void
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->templateName:Ljava/lang/String;

    return-void
.end method

.method public setToBaseClass(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toBaseClass:Ljava/lang/String;

    return-void
.end method

.method public setToCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toCompany2Id:Ljava/lang/String;

    return-void
.end method

.method public setToId(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toId:Ljava/lang/String;

    return-void
.end method

.method public setToStoreType(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toStoreType:Ljava/lang/String;

    return-void
.end method

.method public setToType(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toType:Ljava/lang/String;

    return-void
.end method

.method public setTrainCode(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainCode:Ljava/lang/String;

    return-void
.end method

.method public setTrainId(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainId:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainName:Ljava/lang/String;

    return-void
.end method

.method public setUpOutDay(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upOutDay:Ljava/lang/String;

    return-void
.end method

.method public setUpTrainCode(Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upTrainCode:Ljava/lang/String;

    return-void
.end method

.method public setUploadStatue(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->validFlag:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 704
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeOutId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->billDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->opStoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toCompany2Id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toBaseClass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->toStoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->fleetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->teamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 721
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->trainCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->outDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upTrainCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->upOutDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->autoMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->signShowName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->sourceBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->postShowName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->payBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->checkOutBillId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->validFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createShowName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->createDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->lastModifyDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->deleteDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 754
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag7:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 757
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag8:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 758
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag9:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->flag10:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->companyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->company2Name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->otherCompanyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->baseClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget-object p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->storeTypeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget p2, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->uploadStatue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
