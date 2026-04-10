.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;
.super Ljava/lang/Object;
.source "WorkMealWriteOffModel.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;->writeOffWorkMeal(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

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

    .line 95
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

    invoke-static {v0, p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;->access$700(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 87
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-static {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;->access$600(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel;Lretrofit2/Response;Lcom/ayma/base/mvp/ModelBaseCallBack;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelCallBack;

    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    return-void
.end method
