.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$supplier:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u4f9b\u5e94\u5546\uff1a%s\u76ee\u524d\u4e3a\u65e0\u6548\u72b6\u6001"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
