.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9$2;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$9;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    const-string v2, "\u5220\u9664\u8bb0\u5f55\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$5800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
