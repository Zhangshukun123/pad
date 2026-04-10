.class public Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;
.super Ljava/lang/Object;
.source "WorkMealSelectGoodsEvent.java"


# instance fields
.field private goods:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;->goods:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-void
.end method


# virtual methods
.method public getGoods()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;->goods:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-object v0
.end method

.method public setGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ayma/commonerp/eventbus/WorkMealSelectGoodsEvent;->goods:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-void
.end method
