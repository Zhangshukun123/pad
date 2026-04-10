.class public Lcom/ayma/commonerp/bean/PayListBean;
.super Ljava/lang/Object;
.source "PayListBean.java"


# static fields
.field public static final STATUE_PAY_FALSE:I = 0x1

.field public static final STATUE_PAY_PAYING:I = 0x0

.field public static final STATUE_PAY_SUCCESS:I = 0x2


# instance fields
.field private goodsCount:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private orderNum:Ljava/lang/String;

.field private payCode:Ljava/lang/String;

.field private payJson:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payStatue:I

.field private saleTypeCode:Ljava/lang/String;

.field private sellData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/ayma/commonerp/bean/PayListBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 24
    invoke-direct/range {v0 .. v9}, Lcom/ayma/commonerp/bean/PayListBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->payStatue:I

    .line 28
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->orderNum:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/ayma/commonerp/bean/PayListBean;->payCode:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/ayma/commonerp/bean/PayListBean;->sellData:Ljava/util/List;

    .line 31
    iput-object p4, p0, Lcom/ayma/commonerp/bean/PayListBean;->payJson:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/ayma/commonerp/bean/PayListBean;->payMoney:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/ayma/commonerp/bean/PayListBean;->goodsCount:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/ayma/commonerp/bean/PayListBean;->saleTypeCode:Ljava/lang/String;

    .line 35
    iput p8, p0, Lcom/ayma/commonerp/bean/PayListBean;->payStatue:I

    .line 36
    iput-object p9, p0, Lcom/ayma/commonerp/bean/PayListBean;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGoodsCount()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->goodsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->orderNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCode()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->payCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPayJson()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->payJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPayMoney()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->payMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStatue()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->payStatue:I

    return v0
.end method

.method public getSaleTypeCode()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->saleTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSellData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PayListBean;->sellData:Ljava/util/List;

    return-object v0
.end method

.method public setGoodsCount(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->goodsCount:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->orderNum:Ljava/lang/String;

    return-void
.end method

.method public setPayCode(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->payCode:Ljava/lang/String;

    return-void
.end method

.method public setPayJson(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->payJson:Ljava/lang/String;

    return-void
.end method

.method public setPayMoney(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->payMoney:Ljava/lang/String;

    return-void
.end method

.method public setPayStatue(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->payStatue:I

    return-void
.end method

.method public setPaying(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->payStatue:I

    return-void
.end method

.method public setSaleTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->saleTypeCode:Ljava/lang/String;

    return-void
.end method

.method public setSellData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PayListBean;->sellData:Ljava/util/List;

    return-void
.end method
