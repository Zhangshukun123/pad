.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;
.super Ljava/lang/Object;
.source "QueryWarehousePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->getGoodsBigType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$requestError$0$QueryWarehousePresenter$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->finishActivity()V

    return-void
.end method

.method public synthetic lambda$requestFailure$1$QueryWarehousePresenter$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->finishActivity()V

    return-void
.end method

.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$400(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$500(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$600(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51fa\u9519\u4e86\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/-$$Lambda$QueryWarehousePresenter$1$5UgyTF_CrQSzyKv2rthQ8ZtkEFk;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/-$$Lambda$QueryWarehousePresenter$1$5UgyTF_CrQSzyKv2rthQ8ZtkEFk;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a"

    .line 70
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$700(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$800(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$900(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51fa\u9519\u4e86\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/-$$Lambda$QueryWarehousePresenter$1$v7mIAQ6eE2IdnHC9WTZ9-78J1YI;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/-$$Lambda$QueryWarehousePresenter$1$v7mIAQ6eE2IdnHC9WTZ9-78J1YI;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a"

    .line 84
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$100(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->hideLoading()V

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$200(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifyBigTypeChange()V

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->access$300(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;->notifySmallTypeChange()V

    return-void
.end method
