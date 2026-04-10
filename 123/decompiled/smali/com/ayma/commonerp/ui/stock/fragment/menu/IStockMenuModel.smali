.class public interface abstract Lcom/ayma/commonerp/ui/stock/fragment/menu/IStockMenuModel;
.super Ljava/lang/Object;
.source "IStockMenuModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract downLoadStockOutTemp(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract downLoadSupplierData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract downLodaStoreData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method
