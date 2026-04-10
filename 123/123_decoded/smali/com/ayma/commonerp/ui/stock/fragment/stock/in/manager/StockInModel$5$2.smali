.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;Ljava/lang/Exception;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
