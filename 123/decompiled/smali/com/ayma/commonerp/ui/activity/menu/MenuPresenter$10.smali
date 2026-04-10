.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSellDataStatue(Ljava/util/List;)V
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

    .line 526
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 545
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    if-nez p1, :cond_0

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Throwable;

    const-string v1, "\u672a\u77e5\u9519\u8bef\u5f15\u8d77\u9500\u552e\u6570\u636e\u66f4\u65b0\u5f02\u5e38"

    invoke-direct {p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, p1}, Lcom/ayma/base/util/WriteExceptionToFileUtil;->saveCatchInfo2File(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 547
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9500\u552e\u6570\u636e\u66f4\u65b0\u9519\u8bef"

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    .line 549
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 550
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    .line 560
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2702(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)Z

    .line 561
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2902(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;I)I

    .line 562
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 563
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->startCheckUploadRunnable(J)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2702(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Z)Z

    .line 530
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2902(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;I)I

    .line 531
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/bean/OrderPositionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/OrderPositionBean;->add1()V

    .line 532
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ayma/commonerp/eventbus/UploadSellDataResultEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->startCheckUploadRunnable(J)V

    .line 534
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNotUploadDataSize()V

    .line 535
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9500\u552e\u6570\u636e\u66f4\u65b0\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
