.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$4;
.super Ljava/lang/Object;
.source "QuerySellDetailPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->queryGoodsName(Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$4;->requestSuccess(Ljava/util/List;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3600(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->access$3700(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;->showGoodsNamePopup(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
