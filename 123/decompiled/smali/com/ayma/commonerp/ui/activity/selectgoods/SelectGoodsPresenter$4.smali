.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;
.super Ljava/lang/Object;
.source "SelectGoodsPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->fetchStock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

.field final synthetic val$autoUpdate:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;Z)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->val$autoUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 321
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2500(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->setRefreshFinish()V

    .line 325
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 293
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1700(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->val$autoUpdate:Z

    if-nez p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1800(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string v0, "\u66f4\u65b0\u5e93\u5b58\u6210\u529f"

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$1900(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->setRefreshFinish()V

    .line 304
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2400(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;)V

    const-string v2, ""

    const-string v3, "\u77e5\u9053\u4e86"

    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
