.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterOrder()V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1263
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$10300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1266
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1267
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1278
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Integer;)V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$10200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1249
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1251
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1252
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1243
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$26;->requestSuccess(Ljava/lang/Integer;)V

    return-void
.end method
