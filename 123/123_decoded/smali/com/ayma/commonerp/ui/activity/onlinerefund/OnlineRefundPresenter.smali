.class public Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "OnlineRefundPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnView;",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundContact$IOnlineReturnPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;->initModel()Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;
    .locals 2

    .line 23
    new-instance v0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
