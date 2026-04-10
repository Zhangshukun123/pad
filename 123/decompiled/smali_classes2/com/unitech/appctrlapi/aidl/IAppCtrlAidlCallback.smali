.class public interface abstract Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback;
.super Ljava/lang/Object;
.source "IAppCtrlAidlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/appctrlapi/aidl/IAppCtrlAidlCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract installAppCallback(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
