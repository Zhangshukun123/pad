.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;
.super Ljava/lang/Object;
.source "SCOrderPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->getOrderData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$500(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$600(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 69
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$700(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showToast(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$900(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$800(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->notifyListDataChange(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 59
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    const-string v1, "\u83b7\u53d6\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showToast(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderModel;->getList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->notifyListDataChange(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
