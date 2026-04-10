.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->deleteOldSellData()V
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

    .line 1067
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9700(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$21;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->deleteOldSellData(ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
