.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4$1;
.super Ljava/lang/Object;
.source "StockOutModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;->access$2400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
