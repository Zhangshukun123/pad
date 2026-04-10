.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;
.super Ljava/lang/Object;
.source "OffSiteAddPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->queryStation(Ljava/lang/String;)V
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

    .line 505
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

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
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$6000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->access$5900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->getStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;->showStationList(Ljava/util/List;)V

    return-void
.end method
