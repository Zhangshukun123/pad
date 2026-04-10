.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;
.super Ljava/lang/Object;
.source "SelectGoodsPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->requestSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 310
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-boolean p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->val$autoUpdate:Z

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    const-string p2, "\u66f4\u65b0\u5e93\u5b58\u6210\u529f"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->showToast(Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsContact$ISelectGoodsView;->setRefreshFinish()V

    .line 314
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->queryGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
