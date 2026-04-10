.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;
.super Ljava/lang/Object;
.source "SCOpenShopPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->openShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

.field final synthetic val$trainId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->val$trainId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$500(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->hideLoading()V

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$600(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->hideLoading()V

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    const-string v1, "\u5f00\u5e97\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->showToast(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->val$trainId:Ljava/lang/String;

    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->shopTrainId:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;->access$300(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopContact$SCOpenShopView;->openShopSuccess()V

    return-void
.end method
