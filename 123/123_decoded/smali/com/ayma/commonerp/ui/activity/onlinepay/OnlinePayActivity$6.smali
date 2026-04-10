.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;
.super Ljava/lang/Object;
.source "OnlinePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showJDPayQrCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

.field final synthetic val$orderNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;->val$orderNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 601
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$6;->val$orderNo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->queryOrderStatue(Ljava/lang/String;Z)V

    return-void
.end method
