.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 734
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$code:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6761\u7801\u6216\u7f16\u7801\u4e3a%s\u7684\u5546\u54c1,\n\u8bf7\u786e\u8ba4\u4f9b\u5e94\u5e93\u522b\u6216\u8005\u5546\u54c1\u6761\u7801"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
