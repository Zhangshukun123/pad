.class public Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;
.super Ljava/lang/Object;
.source "WorkMealWriteOffBean.java"


# instance fields
.field private cardNo:Ljava/lang/String;

.field private checkedGoodsCode:Ljava/lang/String;

.field private checkedGoodsName:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsPrice:Ljava/lang/String;

.field private mealStatue:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private serviceTime:Ljava/lang/String;

.field private userMobile:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardNo()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedGoodsCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->checkedGoodsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedGoodsName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->checkedGoodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPrice()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->goodsPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMealStatue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->mealStatue:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTime()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->serviceTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMobile()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->userMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isWriteOff()Z
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->mealStatue:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->cardNo:Ljava/lang/String;

    return-void
.end method

.method public setCheckedGoodsCode(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->checkedGoodsCode:Ljava/lang/String;

    return-void
.end method

.method public setCheckedGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->checkedGoodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsPrice(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->goodsPrice:Ljava/lang/String;

    return-void
.end method

.method public setMealStatue(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->mealStatue:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setServiceTime(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->serviceTime:Ljava/lang/String;

    return-void
.end method

.method public setUserMobile(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->userMobile:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->username:Ljava/lang/String;

    return-void
.end method
