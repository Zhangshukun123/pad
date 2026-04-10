.class Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;
.super Ljava/lang/Object;
.source "MultiplexDownloadOtherDataPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->downloadPermission(Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    const/16 v1, 0x307

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    const/16 v1, 0x306

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Integer;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x308

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->sendMessageToHandler(IILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$6;->requestSuccess(Ljava/lang/Integer;)V

    return-void
.end method
