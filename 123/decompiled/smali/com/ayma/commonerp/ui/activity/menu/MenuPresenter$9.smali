.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->uploadSellDataToServer(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/util/List;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2702(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)Z

    .line 505
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 506
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    if-nez p1, :cond_0

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v2, v1, p1}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 507
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->startCheckUploadRunnable(J)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 512
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$9;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSellDataStatue(Ljava/util/List;)V

    return-void
.end method
