.class public Lcom/vondear/rxfeature/module/alipay/AliPayTool;
.super Ljava/lang/Object;
.source "AliPayTool.java"


# static fields
.field private static final SDK_PAY_FLAG:I = 0x1

.field private static mHandler:Landroid/os/Handler;

.field private static sOnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/vondear/rxfeature/module/alipay/AliPayTool$1;

    invoke-direct {v0}, Lcom/vondear/rxfeature/module/alipay/AliPayTool$1;-><init>()V

    sput-object v0, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;
    .locals 1

    .line 18
    sget-object v0, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->sOnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 18
    sget-object v0, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static aliPay(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/vondear/rxfeature/module/alipay/AliPayModel;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V
    .locals 6

    .line 52
    sput-object p5, Lcom/vondear/rxfeature/module/alipay/AliPayTool;->sOnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    .line 53
    invoke-virtual {p4}, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->getOutTradeNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->getMoney()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/vondear/rxfeature/module/alipay/AliPayModel;->getDetail()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/vondear/rxfeature/module/alipay/AliPayOrderTool;->buildOrderParamMap(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/vondear/rxfeature/module/alipay/AliPayOrderTool;->buildOrderParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    .line 58
    invoke-static {p1, p3, p2}, Lcom/vondear/rxfeature/module/alipay/AliPayOrderTool;->getSign(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;

    invoke-direct {p2, p0, p1}, Lcom/vondear/rxfeature/module/alipay/AliPayTool$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 76
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
