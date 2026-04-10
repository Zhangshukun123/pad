.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->checkSignInStatue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7b7e\u5230\u8bb0\u5f55\u5f02\u5e38\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\u8bf7\u9000\u51fa\u91cd\u8bd5\uff0c\u5982\u6b64\u95ee\u9898\u4ecd\u5b58\u5728\uff0c\u8bf7\u5230\u57fa\u7840\u8d44\u6599\u4e0b\u8f7d\u9875\u9762\u66f4\u65b0\u7b7e\u5230\u8bb0\u5f55\u540e\u91cd\u8bd5\uff0c\u5982\u4ecd\u4e0d\u80fd\u89e3\u51b3\uff0c\u8bf7\u53ca\u65f6\u53cd\u9988"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    .line 145
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/Boolean;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->verifyGoods()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->hideLoading()V

    .line 127
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;)V

    const-string v1, ""

    const-string v2, "\u60a8\u5f53\u524d\u5c1a\u672a\u7b7e\u5230\u6216\u5df2\u9000\u4e58\uff0c\u4e0d\u80fd\u8fdb\u884c\u9500\u552e"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$1;->requestSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
