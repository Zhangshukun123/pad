.class public Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOCK_CONSTANTS"
.end annotation


# static fields
.field public static final BASE_CLASS_GOODS_NAME:Ljava/lang/String; = "\u5546\u54c1"

.field public static final BASE_CLASS_GOODS_VALUE:Ljava/lang/String; = "G"

.field public static final BASE_CLASS_RECEIPT_NAME:Ljava/lang/String; = "\u7968\u636e"

.field public static final BASE_CLASS_RECEIPT_VALUE:Ljava/lang/String; = "R"

.field public static final BASE_CLASS_SEP_NAME:Ljava/lang/String; = "\u5907\u54c1"

.field public static final BASE_CLASS_SEP_VALUE:Ljava/lang/String; = "P"

.field public static final IN_RECEIPT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IN_RECEIPT_TYPE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUT_RECEIPT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUT_RECEIPT_TYPE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUE_ALL_NAME:Ljava/lang/String; = "\u5168\u90e8"

.field public static final STATUE_ALL_VALUE:Ljava/lang/String; = ""

.field public static final STATUE_COMMITTED_NAME:Ljava/lang/String; = "\u5df2\u63d0\u4ea4"

.field public static final STATUE_COMMITTED_VALUE:Ljava/lang/String; = "1"

.field public static final STATUE_NOT_COMMIT_NAME:Ljava/lang/String; = "\u672a\u63d0\u4ea4"

.field public static final STATUE_NOT_COMMIT_VALUE:Ljava/lang/String; = "0"

.field public static final STATUE_NOT_UPLOAD_NAME:Ljava/lang/String; = "\u5f85\u4e0a\u4f20"

.field public static final STATUE_NOT_UPLOAD_VALUE:Ljava/lang/String; = "-3"

.field public static final STOCK_RECEIPT_IN_NAME:Ljava/lang/String; = "PDA\u91c7\u8d2d\u5165\u5e93"

.field public static final STOCK_RECEIPT_IN_VALUE:Ljava/lang/String; = "SI5"

.field public static final STOCK_RECEIPT_OUT_NAME:Ljava/lang/String; = "PDA\u9500\u552e\u51fa\u5e93"

.field public static final STOCK_RECEIPT_OUT_VALUE:Ljava/lang/String; = "SO9"

.field public static final STOCK_RECEIPT_STATUE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STOCK_RECEIPT_STATUE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 289
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$1;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$1;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->IN_RECEIPT_TYPE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;

    .line 295
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$2;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$2;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->IN_RECEIPT_LIST:Ljava/util/List;

    .line 302
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$3;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$3;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->OUT_RECEIPT_TYPE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;

    .line 308
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$4;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$4;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->OUT_RECEIPT_LIST:Ljava/util/List;

    .line 313
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$5;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$5;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->STOCK_RECEIPT_STATUE_LIST:Ljava/util/List;

    .line 321
    new-instance v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;

    invoke-direct {v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;->STOCK_RECEIPT_STATUE_NAME_VALUE_MAP:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
