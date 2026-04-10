.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;
.super Ljava/lang/Object;
.source "StockInEditPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->fetchStoreData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeTypeCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->val$storeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->val$storeTypeCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 66
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->val$storeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->val$storeTypeCode:Ljava/lang/String;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->fetchStoreDataNoOnline(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->hideLoading()V

    .line 56
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getStoreList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showStoreData(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->getStoreModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;->showStoreModelData(Ljava/util/List;)V

    return-void
.end method
