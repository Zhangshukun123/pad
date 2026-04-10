.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;
.super Ljava/lang/Object;
.source "ScrappedPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->getScrappedType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a"

    .line 96
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->hideLoading()V

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->notifyScrappedTypeChange()V

    return-void
.end method
