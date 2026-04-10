.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;
.super Ljava/lang/Object;
.source "OnlineRefundSimplePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelParamCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->refundOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/ModelParamCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

.field final synthetic val$transactionNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->val$transactionNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->val$transactionNo:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->queryRefundOrderDelay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic requestSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->requestSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;)V
    .locals 4

    .line 109
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1100(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$102(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1200(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->hideLoading()V

    .line 114
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;->access$1400(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimplePresenter$2;)V

    const-string v2, "\u9000\u6b3e\u7533\u8bf7\u5df2\u63d0\u4ea4\uff0c\u8bf7\u4ee5\u5b9e\u9645\u5230\u8d26\u4e3a\u51c6\u3002"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleContact$IOnlineRefundSimpleView;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
