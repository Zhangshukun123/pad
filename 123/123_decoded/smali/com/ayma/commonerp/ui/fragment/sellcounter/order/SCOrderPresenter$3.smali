.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;
.super Ljava/lang/Object;
.source "SCOrderPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->shopOrderRefund(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

.field final synthetic val$layoutPosition:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    iput p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->val$layoutPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$2100(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$2200(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$2300(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1700(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1800(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->hideLoading()V

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$1900(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    iget v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->val$layoutPosition:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->removeOrderByPosition(II)V

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;->access$2000(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;

    const-string v1, "\u9000\u6b3e\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderContact$SCOrderView;->showToast(Ljava/lang/String;)V

    return-void
.end method
