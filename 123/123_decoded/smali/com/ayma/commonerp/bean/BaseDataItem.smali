.class public Lcom/ayma/commonerp/bean/BaseDataItem;
.super Lorg/litepal/crud/LitePalSupport;
.source "BaseDataItem.java"


# instance fields
.field private attributeCode:Ljava/lang/String;

.field private attributeDicId:Ljava/lang/String;

.field private attributeName:Ljava/lang/String;

.field private attributeTypeCode2:Ljava/lang/String;

.field private sortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeCode()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDicId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeDicId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeTypeCode2()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeTypeCode2:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->sortOrder:I

    return v0
.end method

.method public setAttributeCode(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeCode:Ljava/lang/String;

    return-void
.end method

.method public setAttributeDicId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeDicId:Ljava/lang/String;

    return-void
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeTypeCode2(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->attributeTypeCode2:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/ayma/commonerp/bean/BaseDataItem;->sortOrder:I

    return-void
.end method
