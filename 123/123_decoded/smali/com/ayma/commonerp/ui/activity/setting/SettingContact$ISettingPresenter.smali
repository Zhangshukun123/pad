.class public interface abstract Lcom/ayma/commonerp/ui/activity/setting/SettingContact$ISettingPresenter;
.super Ljava/lang/Object;
.source "SettingContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISettingPresenter"
.end annotation


# virtual methods
.method public abstract boundMachine(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkOnlinePayInvoicingStatue()V
.end method

.method public abstract checkPayOptionType()V
.end method

.method public abstract clearData()V
.end method

.method public abstract clearDataSimple()V
.end method

.method public abstract getConfig()V
.end method

.method public abstract getConfig(Ljava/lang/String;)V
.end method

.method public abstract initConfigPresenter()V
.end method

.method public abstract initHandler()V
.end method

.method public abstract invoicingStatueChange(Z)V
.end method

.method public abstract isPassVerify()Z
.end method

.method public abstract payOptionType(Z)V
.end method

.method public abstract saveConfig(Ljava/lang/String;Z)V
.end method

.method public abstract sendMessage(ILjava/lang/Object;)V
.end method
