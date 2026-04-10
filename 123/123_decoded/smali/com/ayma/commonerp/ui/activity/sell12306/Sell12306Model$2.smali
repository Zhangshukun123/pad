.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;
.super Ljava/lang/Object;
.source "Sell12306Model.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->commitData(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->access$900(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->notOk(I)Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->clearCommittedData()V

    .line 141
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->access$800(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 136
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;

    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {p2, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;->access$700(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Model;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
