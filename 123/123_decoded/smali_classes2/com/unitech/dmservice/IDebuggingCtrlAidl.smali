.class public interface abstract Lcom/unitech/dmservice/IDebuggingCtrlAidl;
.super Ljava/lang/Object;
.source "IDebuggingCtrlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub;,
        Lcom/unitech/dmservice/IDebuggingCtrlAidl$Default;
    }
.end annotation


# virtual methods
.method public abstract saveLogcatFile(Ljava/lang/String;J)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "seconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSaveLogcat(I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
