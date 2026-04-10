.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->requestFailure(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2908(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)I

    .line 554
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$10;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSellDataStatue(Ljava/util/List;)V

    return-void
.end method
