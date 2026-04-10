.class public Lcom/ayma/commonerp/bean/GoodsDataBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "GoodsDataBean.java"


# instance fields
.field private bigGoodsTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BigGoodsTypesBean;",
            ">;"
        }
    .end annotation
.end field

.field private goodsInfoDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation
.end field

.field private smallGoodsTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation
.end field

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean;",
            ">;"
        }
    .end annotation
.end field

.field private suppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SuppliersBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigGoodsTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BigGoodsTypesBean;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->bigGoodsTypes:Ljava/util/List;

    return-object v0
.end method

.method public getGoodsInfoDtos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->goodsInfoDtos:Ljava/util/List;

    return-object v0
.end method

.method public getSmallGoodsTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->smallGoodsTypes:Ljava/util/List;

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->stores:Ljava/util/List;

    return-object v0
.end method

.method public getSuppliers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SuppliersBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->suppliers:Ljava/util/List;

    return-object v0
.end method

.method public setBigGoodsTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/BigGoodsTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->bigGoodsTypes:Ljava/util/List;

    return-void
.end method

.method public setGoodsInfoDtos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->goodsInfoDtos:Ljava/util/List;

    return-void
.end method

.method public setSmallGoodsTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->smallGoodsTypes:Ljava/util/List;

    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->stores:Ljava/util/List;

    return-void
.end method

.method public setSuppliers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SuppliersBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/bean/GoodsDataBean;->suppliers:Ljava/util/List;

    return-void
.end method
