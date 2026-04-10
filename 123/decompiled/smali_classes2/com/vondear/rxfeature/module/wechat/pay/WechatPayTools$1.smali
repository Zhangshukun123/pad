.class final Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "WechatPayTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->wechatPayUnifyOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxfeature/module/wechat/pay/WechatModel;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$OnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$jsonStr:[Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mch_id:Ljava/lang/String;

.field final synthetic val$wx_private_key:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$jsonStr:[Ljava/lang/String;

    iput-object p2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$mch_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$wx_private_key:Ljava/lang/String;

    iput-object p6, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$OnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "\u5fae\u4fe1\u7edf\u4e00\u4e0b\u5355"

    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$jsonStr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getMapFromXML(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 90
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 92
    :goto_1
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->getCurrTime()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$appid:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v5, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "noncestr"

    const-string v2, "5K8264ILTKCH16CQ2502SI8ZNMTM67VS"

    .line 96
    invoke-interface {v5, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package"

    const-string v2, "Sign=WechatPay"

    .line 97
    invoke-interface {v5, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$mch_id:Ljava/lang/String;

    const-string v2, "partnerid"

    invoke-interface {v5, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepay_id"

    .line 99
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "prepayid"

    invoke-interface {v5, v1, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timestamp"

    .line 100
    invoke-interface {v5, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$appid:Ljava/lang/String;

    iget-object v3, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$mch_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$wx_private_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools$1;->val$OnSuccessAndErrorListener:Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;

    invoke-static/range {v1 .. v6}, Lcom/vondear/rxfeature/module/wechat/pay/WechatPayTools;->wechatPayApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/SortedMap;Lcom/vondear/rxtool/interfaces/OnSuccessAndErrorListener;)V

    return-void
.end method
