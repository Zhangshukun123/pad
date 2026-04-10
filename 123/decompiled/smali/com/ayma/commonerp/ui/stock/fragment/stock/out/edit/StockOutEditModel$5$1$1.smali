.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1$1;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;

.field final synthetic val$storeOutGoodsHead:Lcom/ayma/commonerp/bean/data/stock/out/StoreOutGoodsHead;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;Lcom/ayma/commonerp/bean/data/stock/out/StoreOutGoodsHead;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1$1;->val$storeOutGoodsHead:Lcom/ayma/commonerp/bean/data/stock/out/StoreOutGoodsHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5;->val$modelCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$5$1$1;->val$storeOutGoodsHead:Lcom/ayma/commonerp/bean/data/stock/out/StoreOutGoodsHead;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
