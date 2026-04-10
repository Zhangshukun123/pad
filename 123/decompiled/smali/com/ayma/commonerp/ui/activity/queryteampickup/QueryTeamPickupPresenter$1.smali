.class Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;
.super Ljava/lang/Object;
.source "QueryTeamPickupPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->getGoodsBigType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

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

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->hideLoading()V

    .line 53
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getGoodsBigType()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showGoodsBigType(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupModel;->getGoodsSmallType()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupContact$IQueryTeamPickupView;->showGoodsSmallType(Ljava/util/List;)V

    return-void
.end method
