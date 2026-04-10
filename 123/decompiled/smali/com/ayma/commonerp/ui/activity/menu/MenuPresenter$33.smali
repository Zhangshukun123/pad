.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V
    .locals 0

    .line 1729
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$outDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1767
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$16100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$16200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1771
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$16300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1772
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$16400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const-string p1, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u5e93\u5b58\u6570\u636e\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s\uff0c\u7ed3\u675f"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1777
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;)V
    .locals 5

    .line 1732
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1735
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1736
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1737
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1743
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v4, v0, v2

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v1, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u5e93\u5b58\u6570\u636e\u6210\u529f\uff0c\u51c6\u5907\u751f\u6210\u4ea4\u63a5\u5355"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1744
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$outDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->editQuickHandoverHandoverData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 1738
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1739
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1740
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "\u5f53\u524d\u4ea4\u8def%s(%s)\u65e0\u53ef\u4ea4\u63a5\u7684\u5e93\u5b58\u6570\u636e\uff0c\u7ed3\u675f"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void

    .line 1748
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$16000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;)V

    const-string p1, ""

    const-string v3, "\u77e5\u9053\u4e86"

    invoke-interface {v0, p1, v1, v3, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1729
    check-cast p1, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->requestSuccess(Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;)V

    return-void
.end method
