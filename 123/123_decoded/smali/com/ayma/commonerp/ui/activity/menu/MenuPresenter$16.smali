.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->val$userCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 834
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x7

    .line 838
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$6600(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 839
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 842
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$3300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$6602(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;I)I

    return-void
.end method
