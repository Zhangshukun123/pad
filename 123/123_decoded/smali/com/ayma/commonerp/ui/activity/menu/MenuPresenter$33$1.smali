.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->requestSuccess(Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;)V
    .locals 0

    .line 1748
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->val$data:Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1751
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->val$data:Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuickHandoverWarehouseResult;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1752
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1758
    :cond_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array p2, p2, [Ljava/lang/Object;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v3, p2, v1

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v3, p2, v0

    const-string v0, "\u83b7\u53d6\u5f53\u524d\u4ea4\u8def%s(%s)\u5e93\u5b58\u6570\u636e\u6210\u529f\uff0c\u51c6\u5907\u751f\u6210\u4ea4\u63a5\u5355"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2, v1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    .line 1759
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$trainInfo:Lcom/ayma/commonerp/bean/TrainInfo;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->val$outDate:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->editQuickHandoverHandoverData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 1753
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15500(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverLoading(Z)V

    .line 1754
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->setQuickHandoverOptionEnable(Z)V

    .line 1755
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$33;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$15700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;

    new-array v2, p2, [Ljava/lang/Object;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v0, "\u5f53\u524d\u4ea4\u8def%s(%s)\u65e0\u53ef\u4ea4\u63a5\u7684\u5e93\u5b58\u6570\u636e\uff0c\u7ed3\u675f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;->showQuickHandoverResult(Ljava/lang/String;IZ)V

    return-void
.end method
