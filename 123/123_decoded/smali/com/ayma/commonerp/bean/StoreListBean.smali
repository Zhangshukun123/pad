.class public Lcom/ayma/commonerp/bean/StoreListBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "StoreListBean.java"


# instance fields
.field private storeId:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private storeTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoreTypeListBean;",
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
.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoreTypeListBean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeTypeList:Ljava/util/List;

    return-object v0
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setStoreTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StoreTypeListBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreListBean;->storeTypeList:Ljava/util/List;

    return-void
.end method
