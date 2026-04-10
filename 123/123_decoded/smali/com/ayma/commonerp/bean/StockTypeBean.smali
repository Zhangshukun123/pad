.class public Lcom/ayma/commonerp/bean/StockTypeBean;
.super Ljava/lang/Object;
.source "StockTypeBean.java"


# instance fields
.field private storeType:Ljava/lang/String;

.field private storeTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockTypeBean;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTypeName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/ayma/commonerp/bean/StockTypeBean;->storeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockTypeBean;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setStoreTypeName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/bean/StockTypeBean;->storeTypeName:Ljava/lang/String;

    return-void
.end method
