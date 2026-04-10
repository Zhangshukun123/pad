.class public Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;
.super Ljava/lang/Object;
.source "WechatShareTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;
    }
.end annotation


# static fields
.field private static iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p0

    sput-object p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 35
    invoke-interface {p0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method

.method public static shareImage(Landroid/graphics/Bitmap;Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v0, p0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 74
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    const/16 v0, 0x64

    const/4 v2, 0x1

    .line 76
    invoke-static {p0, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxImageTool;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 80
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 81
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 84
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 89
    :cond_1
    iput v2, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 98
    :goto_0
    sget-object p1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_3

    .line 99
    invoke-interface {p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 101
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u5148\u8c03\u7528WechatShare.init()\u65b9\u6cd5"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareMusic(Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;)V
    .locals 2

    .line 106
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 110
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 111
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getThumbData()[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 116
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 117
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 120
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iput v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 125
    :cond_1
    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 134
    :goto_0
    sget-object p1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_3

    .line 135
    invoke-interface {p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 137
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u5148\u8c03\u7528WechatShare.init()\u65b9\u6cd5"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareText(Ljava/lang/String;Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;)V
    .locals 2

    .line 39
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 43
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 44
    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 46
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 47
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 50
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iput v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 55
    :cond_1
    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 64
    :goto_0
    sget-object p1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_3

    .line 65
    invoke-interface {p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u5148\u8c03\u7528WechatShare.init()\u65b9\u6cd5"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareURL(Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;)V
    .locals 2

    .line 178
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 181
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 182
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getThumbData()[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 187
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 188
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 191
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iput v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 196
    :cond_1
    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 205
    :goto_0
    sget-object p1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_3

    .line 206
    invoke-interface {p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 208
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u5148\u8c03\u7528WechatShare.init()\u65b9\u6cd5"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareVideo(Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;)V
    .locals 2

    .line 142
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 146
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->getThumbData()[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 151
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 152
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 155
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    invoke-virtual {p1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iput v1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 160
    :cond_1
    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 170
    :goto_0
    sget-object p1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;->iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_3

    .line 171
    invoke-interface {p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 173
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u8bf7\u5148\u8c03\u7528WechatShare.init()\u65b9\u6cd5"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
