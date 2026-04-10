.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7$1;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$7;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    const-string v2, "\u4f9b\u5e94\u5546\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$4800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
