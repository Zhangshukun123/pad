.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;
.super Ljava/lang/Object;
.source "OnlinePayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$2;->val$tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayPresenter;->cancelPayQueryRequest(Ljava/lang/String;)V

    return-void
.end method
