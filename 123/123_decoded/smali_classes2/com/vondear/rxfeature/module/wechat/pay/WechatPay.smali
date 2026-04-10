.class public Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;
.super Ljava/lang/Object;
.source "WechatPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;
    }
.end annotation


# static fields
.field public static final ERROR_PAY:I = 0x3

.field public static final ERROR_PAY_PARAM:I = 0x2

.field public static final NO_OR_LOW_WX:I = 0x1

.field private static sMWechatPay:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;


# instance fields
.field private mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

.field private mPayParam:Ljava/lang/String;

.field private mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 30
    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method

.method private check()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x22000001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;
    .locals 1

    .line 40
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->sMWechatPay:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->sMWechatPay:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;

    invoke-direct {v0, p0, p1}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->sMWechatPay:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;

    :cond_0
    return-void
.end method


# virtual methods
.method public doPay(Ljava/lang/String;Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;)V
    .locals 8

    .line 51
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mPayParam:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    .line 54
    invoke-direct {p0}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->check()Z

    move-result p1

    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 56
    invoke-interface {p1, p2}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onError(I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x2

    .line 63
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mPayParam:Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "appid"

    .line 71
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "partnerid"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "prepayid"

    .line 72
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "packageValue"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "noncestr"

    .line 73
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "timestamp"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "sign"

    .line 74
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    new-instance p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 82
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 83
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 84
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 86
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 87
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 88
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 90
    iget-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p2, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 75
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    if-eqz p2, :cond_4

    .line 76
    invoke-interface {p2, p1}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onError(I)V

    :cond_4
    return-void

    :catch_0
    move-exception p2

    .line 65
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    iget-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    if-eqz p2, :cond_5

    .line 67
    invoke-interface {p2, p1}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onError(I)V

    :cond_5
    return-void
.end method

.method public getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mWXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public onResp(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 100
    invoke-interface {v0}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onSuccess()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    .line 102
    invoke-interface {v0, p1}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onError(I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne p1, v1, :cond_3

    .line 104
    invoke-interface {v0}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;->onCancel()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPay;->mCallback:Lcom/vondear/rxfeature/module/wechat/pay/WechatPay$WXPayResultCallBack;

    return-void
.end method
