.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;
.super Ljava/lang/Object;
.source "OffSiteAddPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->getSupplierList()V
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

    .line 112
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->hideLoading()V

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a"

    .line 129
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->hideLoading()V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getSupplierList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->initSupplier(Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getSelectBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->initRlv(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->hideLoading()V

    return-void
.end method
