.class Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead$1;
.super Ljava/lang/Object;
.source "StockReceiptOutHead.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
    .locals 1

    .line 160
    new-instance v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    invoke-direct {v0, p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;
    .locals 0

    .line 165
    new-array p1, p1, [Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead$1;->newArray(I)[Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    move-result-object p1

    return-object p1
.end method
