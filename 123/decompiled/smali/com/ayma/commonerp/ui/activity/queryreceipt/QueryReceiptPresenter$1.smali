.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;
.super Ljava/lang/Object;
.source "QueryReceiptPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->queryEtcData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showToast(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->notifyDataChange()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showToast(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->notifyDataChange()V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->notifyDataChange()V

    return-void
.end method
