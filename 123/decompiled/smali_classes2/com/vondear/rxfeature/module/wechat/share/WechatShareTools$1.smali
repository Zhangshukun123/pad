.class synthetic Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;
.super Ljava/lang/Object;
.source "WechatShareTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->values()[Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    :try_start_0
    sget-object v1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Friend:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    sget-object v1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Zone:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$1;->$SwitchMap$com$vondear$rxfeature$module$wechat$share$WechatShareTools$SharePlace:[I

    sget-object v1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Favorites:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    invoke-virtual {v1}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
