.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSimCardInfo()V
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

    .line 1099
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9800(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    sget-object v2, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    sget-object v3, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    sget-object v4, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$22;)V

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->fetchActiveAndNotUploadSimCardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method
