.class public Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "SmallGoodsTypesBean.java"


# static fields
.field public static final SELECT_STATUE_ALL:I = 0x1

.field public static final SELECT_STATUE_NONE:I = -0x1

.field public static final SELECT_STATUE_SOME:I


# instance fields
.field private endPosition:I

.field private goodsTypeCode:Ljava/lang/String;

.field private goodsTypeId:Ljava/lang/String;

.field private goodsTypeName:Ljava/lang/String;

.field private isSelect:Z

.field private pgoodsTypeId:Ljava/lang/String;

.field private selectStatue:I

.field private sortOrder:I

.field private startPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->sortOrder:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    return-void
.end method


# virtual methods
.method public getEndPosition()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->endPosition:I

    return v0
.end method

.method public getGoodsTypeCode()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTypeName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPgoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->pgoodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectStatue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->sortOrder:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->startPosition:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->isSelect:Z

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSelectNone()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectSome()Z
    .locals 1

    .line 35
    iget v0, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEndPosition(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->endPosition:I

    return-void
.end method

.method public setGoodsTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTypeName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->goodsTypeName:Ljava/lang/String;

    return-void
.end method

.method public setPgoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->pgoodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->isSelect:Z

    return-void
.end method

.method public setSelectStatue(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->selectStatue:I

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->sortOrder:I

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->startPosition:I

    return-void
.end method
