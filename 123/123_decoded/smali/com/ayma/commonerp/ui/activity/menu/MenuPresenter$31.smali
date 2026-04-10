.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchSaleData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
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
        "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$addReceipt:Ljava/util/List;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$storeMap:Ljava/util/Map;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$typeMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$outDate:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$storeMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$typeMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$typeList:Ljava/util/List;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$addReceipt:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1533
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1536
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e0\u9500\u552e\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1537
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u5f53\u524d\u4ea4\u8def%s(%s)\u65e0\u9500\u552e\u6570\u636e\uff0c\u8fdb\u884c\u4e0b\u4e00\u6b65\u9aa4\uff1a\u751f\u6210\u4ea4\u63a5\u5355"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1538
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$outDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    return-void

    .line 1541
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1542
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1543
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v5}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u9500\u552e\u6570\u636e\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1548
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1515
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1521
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1526
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v5}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$outDate:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u9500\u552e\u6570\u636e\u6210\u529f\uff0c\u8fdb\u884c\u4e0b\u4e00\u6b65\u9aa4\uff1a\u4e3a\u63a5\u8d27\u4ea4\u8def%s(%s)\u751f\u6210\u8981\u6599\u5355"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1528
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$outDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$storeMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$typeMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$typeList:Ljava/util/List;

    iget-object v10, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$addReceipt:Ljava/util/List;

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 1522
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$13500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->getGoDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "\u5f53\u524d\u4ea4\u8def%s(%s)\u65e0\u9500\u552e\u6570\u636e\uff0c\u8fdb\u884c\u4e0b\u4e00\u6b65\u9aa4\uff1a\u751f\u6210\u4ea4\u63a5\u5355"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1523
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$31;->val$outDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->fetchWarehouseData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;)V

    return-void
.end method
