.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;
.super Ljava/lang/Object;
.source "QueryReceiptPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->deleteReceipt(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

.field final synthetic val$billNo:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;ILjava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$position:I

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$billNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 123
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$billNo:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\u5355\u636e\uff1a%s\u5220\u9664\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 112
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptModel;->removeData(I)V

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->notifyListRemoved(I)V

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$2;->val$billNo:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "\u5355\u636e:%s\n\u5220\u9664\u6210\u529f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showToast(Ljava/lang/String;)V

    return-void
.end method
