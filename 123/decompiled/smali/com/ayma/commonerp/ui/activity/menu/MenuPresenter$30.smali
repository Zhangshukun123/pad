.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
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
        "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$storeMap:Ljava/util/Map;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$typeMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$storeMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 11

    .line 1482
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$12900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1485
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e0\u5355\u636e\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1486
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "\u63a5\u8d27\u4ea4\u8def%s(%s)\u65e0\u8981\u6599\u5355\u6570\u636e\uff0c\u51c6\u5907\u751f\u6210"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1487
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$storeMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeList:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v4 .. v10}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchSaleData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1490
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1491
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "\u67e5\u8be2\u63a5\u8d27\u4ea4\u8def%s(%s)\u662f\u5426\u5df2\u6709\u8981\u6599\u5355\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    :goto_0
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1497
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1470
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;)V"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$12700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$12800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "\u67e5\u8be2\u63a5\u8d27\u4ea4\u8def%s(%s)\u8981\u6599\u5355\u5355\u636e\u6570\u636e\u6210\u529f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1477
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$outDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$storeMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$30;->val$typeList:Ljava/util/List;

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchSaleData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
