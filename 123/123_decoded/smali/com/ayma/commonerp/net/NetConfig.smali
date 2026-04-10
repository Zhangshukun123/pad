.class public Lcom/ayma/commonerp/net/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# static fields
.field public static BASE_ADDRESS:Ljava/lang/String; = "https://exservice.12306.cn/"

.field public static BASE_ADDRESS_INTERFACE:Ljava/lang/String; = "https://exservice.12306.cn/infeerp/"

.field public static BASE_ADDRESS_OPEN_SHOP:Ljava/lang/String; = "https://exservice.12306.cn/infeerp/"

.field public static BASE_ADDRESS_PAY:Ljava/lang/String; = "https://exservice.12306.cn/payerp/"

.field public static BASE_ADDRESS_SHOP_ORDER_REFUND:Ljava/lang/String; = "https://exservice.12306.cn/rxs-cater-api/"

.field public static final CONFIG_ADDRESS:Ljava/lang/String;

.field public static final CONFIG_NAME:Ljava/lang/String; = "ver.txt"

.field public static final INTERFACE_ADDRESS_PRE_PREPUB:Ljava/lang/String; = "prepub/erp-interface/"

.field public static final INTERFACE_ADDRESS_PRE_PRODUCTION:Ljava/lang/String; = "infeerp/"

.field public static IP_ADDRESS_RELEASE:Ljava/lang/String; = "https://exservice.12306.cn/"

.field public static final PAY_ADDRESS_PRE_PREPUB:Ljava/lang/String; = "prepub/erp-pay/"

.field public static final PAY_ADDRESS_PRE_PRODUCTION:Ljava/lang/String; = "payerp/"

.field public static final SHOP_ADDRESS_PRE_PREPUB:Ljava/lang/String; = "prepub/"

.field public static final SHOP_ADDRESS_PRE_PRODUCTION:Ljava/lang/String; = "prepub/"

.field public static final SHOP_ORDER_REFUND_ADDRESS_PRE_PREPUB:Ljava/lang/String; = "prepub/excater-api/"

.field public static final SHOP_ORDER_REFUND_ADDRESS_PRE_PRODUCTION:Ljava/lang/String; = "rxs-cater-api/"

.field public static final UPDATE_URL_BASE:Ljava/lang/String;

.field public static key:Ljava/lang/String; = "o6IgFIj7gJanSJyyg6ruaiq0PHRFpVd9"

.field public static sign:Ljava/lang/String; = "E6363AD978AA45D77620034A2EE7ACF1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->BASE_ADDRESS_INTERFACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "assets/Version/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/net/NetConfig;->UPDATE_URL_BASE:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ayma/commonerp/net/NetConfig;->UPDATE_URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ver.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/net/NetConfig;->CONFIG_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
