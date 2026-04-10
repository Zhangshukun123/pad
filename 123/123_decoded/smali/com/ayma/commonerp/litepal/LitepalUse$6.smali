.class Lcom/ayma/commonerp/litepal/LitepalUse$6;
.super Ljava/lang/Object;
.source "LitepalUse.java"

# interfaces
.implements Lorg/litepal/crud/callback/FindMultiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/litepal/LitepalUse;->queryPermission(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/litepal/crud/callback/FindMultiCallback<",
        "Lcom/ayma/commonerp/bean/PermissionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/litepal/LitepalUse;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$6;->this$0:Lcom/ayma/commonerp/litepal/LitepalUse;

    iput-object p2, p0, Lcom/ayma/commonerp/litepal/LitepalUse$6;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PermissionBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1706
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/litepal/LitepalUse$6;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/PermissionBean;

    invoke-interface {v0, p1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void

    .line 1707
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/litepal/LitepalUse$6;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "\u65e0\u6743\u9650\u6570\u636e\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u5df2\u7ecf\u4e0b\u8f7d\uff0c\u5982\u5df2\u4e0b\u8f7d\uff0c\u8bf7\u8054\u7cfb\u7ba1\u7406\u5458"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method
