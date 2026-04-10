.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->saveSimCardInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

.field final synthetic val$iccid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;Ljava/lang/String;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;->val$iccid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1170
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .line 1147
    new-instance v0, Lcom/ayma/commonerp/bean/SimCardInfo;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/SimCardInfo;-><init>()V

    .line 1148
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;->val$iccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setCardCode(Ljava/lang/String;)V

    .line 1149
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setCompany2Id(Ljava/lang/String;)V

    .line 1150
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setTrainId(Ljava/lang/String;)V

    .line 1151
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setOutDay(Ljava/lang/String;)V

    .line 1152
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setEmployeeCode(Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/bean/SimCardInfo;->setSaveDay(Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$23;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->access$9900(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;

    invoke-virtual {v1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuModel;->saveSimCardInfoToDatabase(Lcom/ayma/commonerp/bean/SimCardInfo;)V

    return-void
.end method
