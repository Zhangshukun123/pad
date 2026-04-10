.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;
.super Ljava/lang/Object;
.source "OffSiteAddPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 496
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getTotalPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showCountAndTotalPrice(DLjava/lang/Double;)V

    return-void
.end method
