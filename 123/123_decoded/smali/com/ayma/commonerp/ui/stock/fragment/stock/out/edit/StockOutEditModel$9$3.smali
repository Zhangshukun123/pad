.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;Ljava/lang/Exception;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$9$3;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$6100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
