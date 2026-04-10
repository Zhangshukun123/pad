.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;
.super Ljava/lang/Object;
.source "StockMenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;Ljava/lang/Exception;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
