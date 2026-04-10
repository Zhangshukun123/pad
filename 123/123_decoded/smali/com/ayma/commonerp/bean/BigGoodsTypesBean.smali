.class public Lcom/ayma/commonerp/bean/BigGoodsTypesBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "BigGoodsTypesBean.java"


# instance fields
.field private pgoodsTypeCode:Ljava/lang/String;

.field private pgoodsTypeId:Ljava/lang/String;

.field private pgoodsTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getPgoodsTypeCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPgoodsTypeId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPgoodsTypeName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setPgoodsTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeCode:Ljava/lang/String;

    return-void
.end method

.method public setPgoodsTypeId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeId:Ljava/lang/String;

    return-void
.end method

.method public setPgoodsTypeName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;->pgoodsTypeName:Ljava/lang/String;

    return-void
.end method
