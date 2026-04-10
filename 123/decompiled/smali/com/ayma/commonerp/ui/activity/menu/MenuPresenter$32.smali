.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->commitAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$addReceipt:Ljava/util/List;

.field final synthetic val$allSaleData:Ljava/util/List;

.field final synthetic val$outDate:Ljava/lang/String;

.field final synthetic val$storeMap:Ljava/util/Map;

.field final synthetic val$storeTypeName:Ljava/lang/String;

.field final synthetic val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$typeMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1679
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$outDate:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$storeTypeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$storeMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$typeMap:Ljava/util/Map;

    iput-object p7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$typeList:Ljava/util/List;

    iput-object p8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$addReceipt:Ljava/util/List;

    iput-object p9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$allSaleData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1691
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14400(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1695
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1696
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$outDate:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$storeTypeName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "\u4e3a\u63a5\u8d27\u4ea4\u8def%s(%s)%s\u751f\u6210\u8981\u6599\u5355\u5931\u8d25\uff0c\u539f\u56e0\uff1a%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1697
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1698
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverAddResult(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1703
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 12

    .line 1682
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$14300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$outDate:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$storeTypeName:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "\u4e3a\u63a5\u8d27\u4ea4\u8def%s(%s)%s\u751f\u6210\u8981\u6599\u5355\u6210\u529f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1686
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$outDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$storeMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$typeMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$typeList:Ljava/util/List;

    iget-object v10, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$addReceipt:Ljava/util/List;

    iget-object v11, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$32;->val$allSaleData:Ljava/util/List;

    invoke-virtual/range {v4 .. v11}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkHandoverTrainAddReceipt(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
