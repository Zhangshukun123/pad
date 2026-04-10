.class public Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;
.super Ljava/lang/Object;
.source "WechatPayModel.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private noncestr:Ljava/lang/String;

.field private packageValue:Ljava/lang/String;

.field private partnerid:Ljava/lang/String;

.field private prepayid:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->appid:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->partnerid:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->prepayid:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->packageValue:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->noncestr:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->timestamp:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayModel;->sign:Ljava/lang/String;

    return-void
.end method
