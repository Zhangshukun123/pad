.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->deleteOldSignInRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$2300(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$6;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
