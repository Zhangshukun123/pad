.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;
.super Ljava/lang/Object;
.source "TeamHandoverPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    if-nez p1, :cond_0

    const-string p1, "\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 v1, 0x142

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    const/16 v1, 0x141

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
