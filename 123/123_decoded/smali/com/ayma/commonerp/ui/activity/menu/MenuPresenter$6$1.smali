.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "\u672a\u77e5\u5f02\u5e38\u5f15\u8d77\u5220\u9664\u65e7\u7b7e\u5230\u8bb0\u5f55\u5931\u8d25"

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u65e7\u7b7e\u5230\u8bb0\u5f55\u5931\u8d25\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2100(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2200(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ayma/base/util/WriteExceptionToFileUtil;->saveCatchInfo2File(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2000(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5220\u9664\u65e7\u7b7e\u5230\u8bb0\u5f55\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
