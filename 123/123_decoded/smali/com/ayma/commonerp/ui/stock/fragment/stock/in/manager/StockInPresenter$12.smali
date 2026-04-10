.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;
.super Ljava/lang/Object;
.source "StockInPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->dataChange(Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

.field final synthetic val$s:Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->val$s:Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$9400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$9500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$9100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 529
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$9200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->notifyItemInsert(I)V

    goto :goto_0

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->access$9300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->val$s:Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    invoke-virtual {v0}, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;->notifyItemChange(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 522
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter$12;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
