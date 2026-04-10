.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25$1;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25$1;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$25;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSellCounterStatue()V

    return-void
.end method
