.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;
.super Ljava/lang/Object;
.source "OnlinePayActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$100(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u626b\u63cf\u5f02\u5e38"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$000(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->dealScanResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
