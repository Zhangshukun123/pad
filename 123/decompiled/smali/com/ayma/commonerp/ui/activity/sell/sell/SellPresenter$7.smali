.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteGoods(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64cd\u4f5c\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestSuccess()V
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showToast(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalCount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$6300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->getTotalPrice()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showTotalCountAndTotalPrice(DD)V

    :cond_0
    return-void
.end method
