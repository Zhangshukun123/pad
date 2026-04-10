.class public Lcom/ayma/commonerp/bean/StoreTypeListBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "StoreTypeListBean.java"


# instance fields
.field private storeId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private storeTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTypeName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setStoreTypeName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StoreTypeListBean;->storeTypeName:Ljava/lang/String;

    return-void
.end method
