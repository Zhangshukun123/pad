.class Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->getSaleMoneyData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/util/List<",
        "Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->hideLoading()V

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    new-instance v1, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;

    invoke-direct {v1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;-><init>()V

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showGetMoneyData(Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;)V

    .line 81
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->hideLoading()V

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    new-instance v1, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;

    invoke-direct {v1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;-><init>()V

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showGetMoneyData(Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;)V

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->hideLoading()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;

    invoke-interface {v1, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showGetMoneyData(Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;)V

    return-void

    .line 68
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;

    const-string v0, "\u6ca1\u6709\u6570\u636e"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;->showToast(Ljava/lang/String;)V

    return-void
.end method
