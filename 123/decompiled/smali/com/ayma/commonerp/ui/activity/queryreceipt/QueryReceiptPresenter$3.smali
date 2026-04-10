.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;
.super Ljava/lang/Object;
.source "QueryReceiptPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->queryEtcDetail(Lcom/ayma/commonerp/bean/QueryReceiptBean;)V
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
        "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/QueryReceiptBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;Lcom/ayma/commonerp/bean/QueryReceiptBean;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->val$bean:Lcom/ayma/commonerp/bean/QueryReceiptBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 171
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2700(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->hideLoading()V

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter$3;->val$bean:Lcom/ayma/commonerp/bean/QueryReceiptBean;

    invoke-interface {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;->showDetail(Lcom/ayma/commonerp/bean/QueryReceiptBean;Ljava/util/List;)V

    return-void
.end method
