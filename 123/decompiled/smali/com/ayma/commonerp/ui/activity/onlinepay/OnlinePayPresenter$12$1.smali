.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12$1;
.super Ljava/lang/Object;
.source "OnlinePayPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;->requestSuccess(Lcom/ayma/commonerp/bean/PayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 514
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12$1;->this$1:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter$12;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->access$5100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayContact$IOnlinePayView;->finishActivity()V

    return-void
.end method
