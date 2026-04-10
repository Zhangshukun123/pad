.class public interface abstract Lcom/unitech/dmservice/ISecurityCtrlAidl;
.super Ljava/lang/Object;
.source "ISecurityCtrlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/ISecurityCtrlAidl$Stub;,
        Lcom/unitech/dmservice/ISecurityCtrlAidl$Default;
    }
.end annotation


# virtual methods
.method public abstract setAdbDebugging(Z)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
