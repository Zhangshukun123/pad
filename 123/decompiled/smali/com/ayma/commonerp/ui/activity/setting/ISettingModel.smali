.class public interface abstract Lcom/ayma/commonerp/ui/activity/setting/ISettingModel;
.super Ljava/lang/Object;
.source "ISettingModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract boundMachine(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
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
.end method

.method public abstract checkOnlinePayInvoicingStatue(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkPayOptionType(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearData(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract clearDataSimple(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getConfig(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getDeviceInfo(Lcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract saveOnlinePayInvoicingStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract savePayOptionType(ZLcom/ayma/base/mvp/ModelCallBack;)V
.end method
