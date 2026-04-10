.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;
.super Ljava/lang/Object;
.source "TeamHandoverPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->cancelSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->access$8700(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter$9;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverModel;->resetSelect(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
