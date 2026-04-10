.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;
.super Ljava/lang/Object;
.source "SCOpenShopModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->openShop(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/ShopResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$trainId:Ljava/lang/String;

.field final synthetic val$trainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$trainName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$trainId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->access$400(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/ShopResultBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->notOk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->access$000(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/ShopResultBean;

    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    const-string v0, "\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->access$100(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->getOk()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 49
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ShopResultBean;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;->access$200(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 52
    :cond_2
    new-instance p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopModel$1;)V

    invoke-static {p1}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
