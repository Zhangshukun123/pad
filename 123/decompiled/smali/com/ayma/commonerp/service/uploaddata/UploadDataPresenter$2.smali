.class Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;
.super Ljava/lang/Object;
.source "UploadDataPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->queryNeedUploadData()V
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
.field final synthetic this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$002(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Z)Z

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->setZero()V

    .line 136
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->startCheckUploadRunnable(J)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->requestSuccess(Ljava/util/List;)V

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

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->removeCheckUploadRunnable()V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$2;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadSellDataToServer(Ljava/util/List;)V

    return-void
.end method
