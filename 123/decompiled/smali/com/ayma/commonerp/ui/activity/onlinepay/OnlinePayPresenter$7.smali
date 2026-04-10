.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderDelayed(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

.field final synthetic val$isJDPay:Z

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->val$orderNo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->val$isJDPay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->val$orderNo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$7;->val$isJDPay:Z

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderStatue(Ljava/lang/String;Z)V

    return-void
.end method
