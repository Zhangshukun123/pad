.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;
.super Ljava/lang/Object;
.source "SCOrderPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->completeOrder(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

.field final synthetic val$orderNo:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->val$orderNo:Ljava/lang/String;

    iput p3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1400(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1500(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1600(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 100
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->val$orderNo:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "\u8ba2\u5355%s\u5b8c\u6210\u6210\u529f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showToast(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    iget v2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$2;->val$position:I

    invoke-interface {v0, v2, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->removeOrderByPosition(II)V

    return-void
.end method
