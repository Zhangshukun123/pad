.class Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;
.super Ljava/lang/Object;
.source "UploadDataPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->uploadSellDataToServer(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Ljava/util/List;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$002(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Z)Z

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->startCheckUploadRunnable(J)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$3;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->updateSellDataStatue(Ljava/util/List;)V

    return-void
.end method
