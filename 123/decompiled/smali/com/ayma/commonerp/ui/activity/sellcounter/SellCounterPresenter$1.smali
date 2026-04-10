.class Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;
.super Ljava/lang/Object;
.source "SellCounterPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->checkOpenShop()V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->hideLoading()V

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "\u521d\u59cb\u5316\u5f02\u5e38\uff1a%s\n\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$1;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$2;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;)V

    const-string v2, ""

    const-string v4, "\u91cd\u8bd5"

    const-string v6, "\u9000\u51fa"

    .line 47
    invoke-interface/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Lcom/ayma/commonerp/bean/OpenShopBean;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->hideLoading()V

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->showOpenStatue(Lcom/ayma/commonerp/bean/OpenShopBean;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/ayma/commonerp/bean/OpenShopBean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->requestSuccess(Lcom/ayma/commonerp/bean/OpenShopBean;)V

    return-void
.end method
