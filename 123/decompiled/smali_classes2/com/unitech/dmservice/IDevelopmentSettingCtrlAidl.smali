.class public interface abstract Lcom/unitech/dmservice/IDevelopmentSettingCtrlAidl;
.super Ljava/lang/Object;
.source "IDevelopmentSettingCtrlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IDevelopmentSettingCtrlAidl$Stub;,
        Lcom/unitech/dmservice/IDevelopmentSettingCtrlAidl$Default;
    }
.end annotation


# virtual methods
.method public abstract setGenericItem(Ljava/lang/String;Z)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "setItem",
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
