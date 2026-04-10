.class public interface abstract Lcom/unitech/dmservice/IServiceCtrlAIDL;
.super Ljava/lang/Object;
.source "IServiceCtrlAIDL.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IServiceCtrlAIDL$Stub;,
        Lcom/unitech/dmservice/IServiceCtrlAIDL$Default;
    }
.end annotation


# virtual methods
.method public abstract executeMethod(Ljava/lang/String;Ljava/lang/String;[Lcom/unitech/dmservice/ObjectData;)Lcom/unitech/dmservice/ObjectData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "methodName",
            "paramValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
