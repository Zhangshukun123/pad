.class public Lcom/ayma/commonerp/bean/StockReceiptDetailBean;
.super Ljava/lang/Object;
.source "StockReceiptDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;
    }
.end annotation


# instance fields
.field private billDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;"
        }
    .end annotation
.end field

.field private billId:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private billType:Ljava/lang/String;

.field private outDay:Ljava/lang/String;

.field private postMark:Ljava/lang/String;

.field private toOutDay:Ljava/lang/String;

.field private toTrainName:Ljava/lang/String;

.field private trainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billDetail:Ljava/util/List;

    return-object v0
.end method

.method public getBillId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billId:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getPostMark()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->postMark:Ljava/lang/String;

    return-object v0
.end method

.method public getToOutDay()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->toOutDay:Ljava/lang/String;

    return-object v0
.end method

.method public getToTrainName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->toTrainName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public setBillDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptDetailBean$BillDetailDTO;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billDetail:Ljava/util/List;

    return-void
.end method

.method public setBillId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billId:Ljava/lang/String;

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBillType(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->billType:Ljava/lang/String;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setPostMark(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->postMark:Ljava/lang/String;

    return-void
.end method

.method public setToOutDay(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->toOutDay:Ljava/lang/String;

    return-void
.end method

.method public setToTrainName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->toTrainName:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockReceiptDetailBean;->trainName:Ljava/lang/String;

    return-void
.end method
