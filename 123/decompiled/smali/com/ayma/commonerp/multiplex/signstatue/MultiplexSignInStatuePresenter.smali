.class public Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "MultiplexSignInStatuePresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/multiplex/signstatue/IMultiplexSignInStatuePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ayma/commonerp/base/IBaseView;",
        ">",
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "TT;",
        "Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;",
        ">;",
        "Lcom/ayma/commonerp/multiplex/signstatue/IMultiplexSignInStatuePresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/base/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method


# virtual methods
.method public deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method public getSignInStatueFromServer(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 47
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    const-string v2, "company2Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    const-string v2, "employeeCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "outDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    const-string v2, "trainId"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v1, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {v1, v0, p1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->fetchSignInStatueFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->initModel()Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;
    .locals 2

    .line 36
    new-instance v0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public saveSignInStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/ayma/commonerp/bean/SignIn;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/SignIn;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 62
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/SignIn;->setSignInStatue(Ljava/lang/String;)V

    .line 63
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/SignIn;->setOutDay(Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/SignIn;->setTeamId(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/bean/SignIn;->setTrainId(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatuePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast p1, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;

    invoke-virtual {p1, v0, p2}, Lcom/ayma/commonerp/multiplex/signstatue/MultiplexSignInStatueModel;->saveOrUpdateSignInStatue(Lcom/ayma/commonerp/bean/SignIn;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
