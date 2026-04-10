.class public interface abstract Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingView;
.super Ljava/lang/Object;
.source "SettingContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISettingView"
.end annotation


# virtual methods
.method public abstract dealScanResult(Ljava/lang/String;)V
.end method

.method public abstract openSystemBrowser(Ljava/lang/String;)V
.end method

.method public abstract passVerify(Z)V
.end method

.method public abstract registerReceiver()V
.end method

.method public abstract saveSuccess()V
.end method

.method public abstract showDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showNetAddress(Ljava/lang/String;Z)V
.end method

.method public abstract showOnlinePayInvoicingStatue(Z)V
.end method

.method public abstract showPayOptionType(Z)V
.end method

.method public abstract showPwdError()V
.end method

.method public abstract unregisterReceiver()V
.end method

.method public abstract updateRunningMode()V
.end method
