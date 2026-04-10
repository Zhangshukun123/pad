.class public interface abstract Lcom/unitech/dmservice/ISafeModeLockCtrlAidl;
.super Ljava/lang/Object;
.source "ISafeModeLockCtrlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/ISafeModeLockCtrlAidl$Stub;,
        Lcom/unitech/dmservice/ISafeModeLockCtrlAidl$Default;
    }
.end annotation


# virtual methods
.method public abstract getLauncherPackageName()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSafeModeLockEnabled()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
