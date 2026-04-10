.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryTrainForQuickHandover(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/ayma/commonerp/bean/TrainInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$trainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$trainName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$outDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1380
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1381
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "\u6821\u9a8c\u63a5\u8d27\u4ea4\u8def\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {v0, p1, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1386
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1357
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            ">;)V"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1363
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$trainName:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$outDate:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "\u67e5\u627e\u5230\u63a5\u8d27\u8f66\u6b21\uff1a%s\uff0c\u786e\u8ba4\u63a5\u8d27\u4ea4\u8def\u4e3a\uff1a%s(%s)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1371
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$outDate:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchStoreList(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    return-void

    .line 1364
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1365
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1366
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$11300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$28;->val$trainName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "\u67e5\u627e\u4e0d\u5230\u63a5\u8d27\u8f66\u6b21\uff1a%s\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method
