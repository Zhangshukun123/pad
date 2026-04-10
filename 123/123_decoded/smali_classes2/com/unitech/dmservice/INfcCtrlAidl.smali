.class public interface abstract Lcom/unitech/dmservice/INfcCtrlAidl;
.super Ljava/lang/Object;
.source "INfcCtrlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/INfcCtrlAidl$Stub;,
        Lcom/unitech/dmservice/INfcCtrlAidl$Default;
    }
.end annotation


# virtual methods
.method public abstract setNfcAdapter(Z)Landroid/os/Bundle;
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
