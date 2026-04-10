.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;
.super Ljava/lang/Object;
.source "SelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->hideLoading()V

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\u64cd\u4f5c\u5931\u8d25:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->hideLoading()V

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getTypeData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showGoodsType(Ljava/util/List;)V

    .line 122
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsModel;->getGoodsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showGoods(Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Ljava/util/List;)V

    return-void

    .line 112
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$2;)V

    const-string v2, ""

    const-string v3, "\u6ca1\u6709\u6570\u636e\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d\u9886\u6599\u5355\u4ee5\u53ca\u5546\u54c1\u6570\u636e"

    const-string v4, "\u786e\u5b9a"

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
