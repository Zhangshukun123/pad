.class public Lcom/ayma/commonerp/ui/activity/setting/SettingModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SettingModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/setting/ISettingModel;


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private isProductionEn:Z

.field private netAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Lretrofit2/Response;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Lretrofit2/Response;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;)Lcom/ayma/commonerp/litepal/LitepalUse;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    return-object p0
.end method


# virtual methods
.method public boundMachine(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->map2Json(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/net/RetrofitFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/net/Api;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->machineModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->version:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/net/Api;->boundMachine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 76
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public checkOnlinePayInvoicingStatue(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "onlinePayInvoicingStatue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkPayOptionType(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "payOptionType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->litepalUseeInit()V

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/litepal/LitepalUse;->clearData(Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method

.method public clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->litepalUseeInit()V

    .line 108
    new-instance v0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel$2;-><init>(Lcom/ayma/commonerp/ui/activity/setting/SettingModel;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getConfig(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "netAddress"

    sget-object v2, Lcom/ayma/commonerp/net/NetConfig;->IP_ADDRESS_RELEASE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->netAddress:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "isProductionEnvironment"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ayma/base/util/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->isProductionEn:Z

    .line 59
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDeviceInfo(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/ayma/base/util/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->deviceModel:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->imei:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->netAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isProductionEn()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->isProductionEn:Z

    return v0
.end method

.method public saveOnlinePayInvoicingStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "onlinePayInvoicingStatue"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 129
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public savePayOptionType(ZLcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->context:Landroid/content/Context;

    const-string v1, "payOptionType"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ayma/base/util/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 148
    invoke-interface {p2}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
