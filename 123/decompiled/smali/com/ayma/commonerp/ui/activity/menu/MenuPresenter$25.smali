.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterStatue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Lcom/ayma/commonerp/bean/OpenShopBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1214
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$10100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1217
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1218
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/OpenShopBean;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$10000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1209
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterOrder()V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1200
    check-cast p1, Lcom/ayma/commonerp/bean/OpenShopBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->requestSuccess(Lcom/ayma/commonerp/bean/OpenShopBean;)V

    return-void
.end method
