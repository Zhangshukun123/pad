.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;
.super Ljava/lang/Object;
.source "OffSiteAddModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->queryStationFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 316
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$1000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ayma/commonerp/bean/RequestHeaderBean;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/RequestHeaderBean;

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->notOk(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 290
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->requestResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 291
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$400(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 294
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd4\u56de\u7684\u6570\u636e\u6709\u8bef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$600(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;)V

    .line 300
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 299
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 305
    :cond_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 306
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/StationItem;

    .line 308
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$900(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StationItem;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StationItem;->getStationTelecode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$800(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StationItem;->getStationName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void

    .line 302
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$700(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 287
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;->access$300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddModel;Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
