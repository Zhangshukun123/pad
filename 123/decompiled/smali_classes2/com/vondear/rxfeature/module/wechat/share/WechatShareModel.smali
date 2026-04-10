.class public Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;
.super Ljava/lang/Object;
.source "WechatShareModel.java"


# instance fields
.field private description:Ljava/lang/String;

.field private thumbData:[B

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->title:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->description:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->thumbData:[B

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbData()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->thumbData:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->thumbData:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareModel;->url:Ljava/lang/String;

    return-void
.end method
