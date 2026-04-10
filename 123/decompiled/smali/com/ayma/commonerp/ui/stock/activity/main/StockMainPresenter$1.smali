.class Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;
.super Ljava/lang/Object;
.source "StockMainPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->checkUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/UpdateInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

.field final synthetic val$autoCheck:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;Z)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->val$autoCheck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$300(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$400(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;->hideLoading()V

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$500(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\u66f4\u65b0\u5f02\u5e38\uff1a%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/UpdateInfoBean;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$000(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$100(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;->hideLoading()V

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;->access$200(Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->val$autoCheck:Z

    invoke-interface {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainContact$IStockMainView;->updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/ayma/commonerp/bean/UpdateInfoBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainPresenter$1;->requestSuccess(Lcom/ayma/commonerp/bean/UpdateInfoBean;)V

    return-void
.end method
