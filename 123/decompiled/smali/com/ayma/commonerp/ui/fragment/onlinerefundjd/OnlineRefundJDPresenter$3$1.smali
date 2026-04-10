.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3$1;
.super Ljava/lang/Object;
.source "OnlineRefundJDPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    const/16 v1, 0x15a

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->sendMsg(ILjava/lang/Object;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3$1;->this$1:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    const/16 v1, 0x159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->sendMsg(ILjava/lang/Object;)V

    return-void
.end method
