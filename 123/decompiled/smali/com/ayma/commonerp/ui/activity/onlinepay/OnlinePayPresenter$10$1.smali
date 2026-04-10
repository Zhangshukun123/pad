.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$4602(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;Z)Z

    .line 452
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$10;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryCashToOnlineDelayed(Ljava/lang/String;)V

    return-void
.end method
