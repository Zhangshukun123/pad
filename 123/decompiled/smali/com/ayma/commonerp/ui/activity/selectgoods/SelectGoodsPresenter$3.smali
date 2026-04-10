.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;
.super Ljava/lang/Object;
.source "SelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->searchGoods(Ljava/lang/String;)V
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
        "Lcom/ayma/commonerp/bean/SellDetailBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSearchResultPopup(Ljava/util/List;)V

    return-void
.end method
