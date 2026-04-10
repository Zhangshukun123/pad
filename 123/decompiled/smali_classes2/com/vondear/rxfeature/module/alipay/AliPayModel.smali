.class public Lcom/vondear/rxfeature/module/alipay/AliPayModel;
.super Ljava/lang/Object;
.source "AliPayModel.java"


# instance fields
.field private detail:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private outTradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->outTradeNo:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->money:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->name:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutTradeNo()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->outTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->detail:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->money:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOutTradeNo(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->outTradeNo:Ljava/lang/String;

    return-void
.end method
