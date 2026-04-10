.class public Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;
.super Ljava/lang/Object;
.source "StockOutTemplateInfo.java"


# instance fields
.field private storeId:Ljava/lang/String;

.field private storeType:Ljava/lang/String;

.field private templateInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->templateInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->storeType:Ljava/lang/String;

    return-void
.end method

.method public setTemplateInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfo;->templateInfoList:Ljava/util/List;

    return-void
.end method
