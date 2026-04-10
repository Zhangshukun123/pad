.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryCashToOnlineDelayed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;->val$orderNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$11;->val$orderNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryCashToOnline(Ljava/lang/String;)V

    return-void
.end method
