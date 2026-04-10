.class Lcom/ayma/commonerp/litepal/LitepalUse$2;
.super Ljava/lang/Object;
.source "LitepalUse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/litepal/LitepalUse;->queryCanSellGoodsWithOutDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/litepal/LitepalUse;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/litepal/LitepalUse;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$2;->this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)I
    .locals 0

    .line 700
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGsortOrder()I

    move-result p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGsortOrder()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 697
    check-cast p1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    check-cast p2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/litepal/LitepalUse$2;->compare(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)I

    move-result p1

    return p1
.end method
