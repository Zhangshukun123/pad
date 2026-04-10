.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;
.super Ljava/lang/Object;
.source "StockOutModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;Ljava/lang/Exception;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$6$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method
