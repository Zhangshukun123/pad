.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;
.super Ljava/lang/Object;
.source "StockInModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchData(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$currentPage:I

.field final synthetic val$endDate:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$pageSize:I

.field final synthetic val$postMarkId:Ljava/lang/String;

.field final synthetic val$receiptNo:Ljava/lang/String;

.field final synthetic val$startDate:Ljava/lang/String;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeModelId:Ljava/lang/String;

.field final synthetic val$supplierId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$storeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$storeModelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$startDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$endDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$supplierId:Ljava/lang/String;

    iput p7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$currentPage:I

    iput p8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$pageSize:I

    iput-object p9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$postMarkId:Ljava/lang/String;

    iput-object p10, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$receiptNo:Ljava/lang/String;

    iput-object p11, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$map:Ljava/util/TreeMap;

    iput-object p12, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$storeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$storeModelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$startDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$endDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$supplierId:Ljava/lang/String;

    iget v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$currentPage:I

    iget v7, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$pageSize:I

    iget-object v8, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$postMarkId:Ljava/lang/String;

    iget-object v9, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$receiptNo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->fetchDataFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->create()Lcom/ayma/commonerp/net/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->generateRequestBody(Ljava/util/TreeMap;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/net/Api;->fetchInStoreParameter(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;->access$4600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInModel$5;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
