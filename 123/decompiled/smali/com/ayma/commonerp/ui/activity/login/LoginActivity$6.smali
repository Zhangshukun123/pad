.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->onBtnSnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/Throwable;)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->hideLoading()V

    .line 343
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\u83b7\u53d6SN\u7801\u5f02\u5e38\uff1a%s\uff0c\n\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->showNoticeToastError(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 335
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    .line 336
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    sget-object v0, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->generateOutCode(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->hideLoading()V

    return-void
.end method
