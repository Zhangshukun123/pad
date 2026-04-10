.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;
.super Ljava/lang/Object;
.source "ScrappedPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
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

    .line 321
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$4000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3800(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->access$3900(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedModel;->getTotalPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;->showCountAndTotalPrice(DLjava/lang/Double;)V

    return-void
.end method
