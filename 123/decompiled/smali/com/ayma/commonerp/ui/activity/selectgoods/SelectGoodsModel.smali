.class public Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SelectGoodsModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/selectgoods/ISelectGoodsModel;


# instance fields
.field private final goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedGoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private final typeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->typeData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->litepalUseeInit()V

    return-void
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->typeData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmss()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setScanDate(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllSelectedGoods()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 184
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 185
    invoke-virtual {v1, v4, v5}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public completeSelectGoods(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 223
    invoke-virtual {v1, p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSaleType(Ljava/lang/String;)V

    .line 224
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setEmployeeId(Ljava/lang/String;)V

    .line 225
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setEmployeeCode(Ljava/lang/String;)V

    .line 226
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTrainsId(Ljava/lang/String;)V

    .line 227
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setTrainName(Ljava/lang/String;)V

    .line 228
    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setOutDate(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setAppVersion(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->machineModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/bean/SellDetailBean;->setMachineModel(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    return-object p1
.end method

.method public getGoodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectTotalCount()D
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 144
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getSelectedGoods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedGoodsTotalPrice()D
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 162
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getTypeData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->typeData:Ljava/util/List;

    return-object v0
.end method

.method public goodsBean2SellDetail(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)Lcom/ayma/commonerp/bean/SellDetailBean;
    .locals 2

    .line 197
    new-instance p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-direct {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCompanyId(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompany2Id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCompany2Id(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsId(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSupplierId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSupplierId(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBarcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setBarcode(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsCode(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setGoodsName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSmallTypeName(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSmallTypeId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getPgoodsTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setBigTypeId(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 208
    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 209
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setSalesPrice(D)V

    const-string v0, ""

    .line 210
    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->setCheckRepeat(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setStockCount(D)V

    return-object p2
.end method

.method public queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 7

    .line 59
    new-instance p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {p1}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSelectedGoods(Lcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->selectedGoods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public searchGoods(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;>;)V"
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u65e0\u5546\u54c1\u6570\u636e"

    .line 239
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 245
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->goodsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 246
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    :cond_1
    invoke-virtual {v4, v3}, Lcom/ayma/commonerp/bean/SellDetailBean;->setListPosition(I)V

    .line 248
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u627e\u4e0d\u5230\u5305\u542b%s\u7684\u5546\u54c1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 252
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 255
    :cond_4
    invoke-interface {p2, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
