.class public final enum Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;
.super Ljava/lang/Enum;
.source "WechatShareTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharePlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

.field public static final enum Favorites:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

.field public static final enum Friend:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

.field public static final enum Zone:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    new-instance v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    const-string v1, "Friend"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Friend:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    .line 214
    new-instance v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    const-string v1, "Zone"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Zone:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    .line 215
    new-instance v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    const-string v1, "Favorites"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Favorites:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    .line 212
    sget-object v5, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Friend:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    aput-object v5, v1, v2

    sget-object v2, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->Zone:Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->$VALUES:[Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;
    .locals 1

    .line 212
    const-class v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    return-object p0
.end method

.method public static values()[Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;
    .locals 1

    .line 212
    sget-object v0, Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->$VALUES:[Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    invoke-virtual {v0}, [Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vondear/rxfeature/module/wechat/share/WechatShareTools$SharePlace;

    return-object v0
.end method
