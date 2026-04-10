.class public final synthetic Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;

    invoke-direct {v0}, Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;-><init>()V

    sput-object v0, Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;->INSTANCE:Lcom/ayma/commonerp/litepal/-$$Lambda$LitepalUse$cO7qxpfAlr5cnczYWpcf-7htJBw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ayma/commonerp/bean/BaseDataItem;

    check-cast p2, Lcom/ayma/commonerp/bean/BaseDataItem;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse;->lambda$querySellTypeInner$0(Lcom/ayma/commonerp/bean/BaseDataItem;Lcom/ayma/commonerp/bean/BaseDataItem;)I

    move-result p1

    return p1
.end method
