.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNeedUploadData()V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2702(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)Z

    .line 411
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->setZero()V

    .line 412
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->startCheckUploadRunnable(J)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 393
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->requestSuccess(Ljava/util/List;)V

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

    .line 396
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 402
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$8;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->uploadSellDataToServer(Ljava/util/List;)V

    :cond_2
    return-void
.end method
