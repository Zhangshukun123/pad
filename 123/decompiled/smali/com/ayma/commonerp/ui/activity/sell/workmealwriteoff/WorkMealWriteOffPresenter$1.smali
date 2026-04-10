.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;
.super Ljava/lang/Object;
.source "WorkMealWriteOffPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->queryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->hideLoading()V

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->showToast(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->notifyListChange(Ljava/util/List;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->hideLoading()V

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    const-string v1, "\u67e5\u8be2\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->showToast(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffContact$IWorkMealWriteOffView;->notifyListChange(Ljava/util/List;)V

    return-void
.end method
