.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->val$userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$16;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
