.class public Lcom/ayma/commonerp/bean/StoresBean;
.super Ljava/lang/Object;
.source "StoresBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;
    }
.end annotation


# instance fields
.field private goods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;",
            ">;"
        }
    .end annotation
.end field

.field private storeId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoresBean;->goods:Ljava/util/List;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoresBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoresBean;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public setGoods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoresBean;->goods:Ljava/util/List;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoresBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoresBean;->storeType:Ljava/lang/String;

    return-void
.end method
