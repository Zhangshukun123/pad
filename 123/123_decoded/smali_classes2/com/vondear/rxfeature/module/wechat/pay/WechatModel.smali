.class public Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;
.super Ljava/lang/Object;
.source "WechatModel.java"


# instance fields
.field private detail:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out_trade_no:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->out_trade_no:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->money:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOut_trade_no()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->out_trade_no:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->detail:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->money:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOut_trade_no(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;->out_trade_no:Ljava/lang/String;

    return-void
.end method
