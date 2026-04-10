.class Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;
.super Ljava/lang/Object;
.source "UploadDataPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->updateSellDataStatue(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$002(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Z)Z

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 256
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->startCheckUploadRunnable(J)V

    .line 258
    iget-object p1, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$300(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9500\u552e\u6570\u636e\u66f4\u65b0\u9519\u8bef"

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$002(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;Z)Z

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$100(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->startCheckUploadRunnable(J)V

    .line 244
    iget-object v0, p0, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter$4;->this$0:Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;->access$200(Lcom/ayma/commonerp/service/uploaddata/UploadDataPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9500\u552e\u6570\u636e\u66f4\u65b0\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
