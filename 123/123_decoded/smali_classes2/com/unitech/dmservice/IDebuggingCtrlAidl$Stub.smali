.class public abstract Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub;
.super Landroid/os/Binder;
.source "IDebuggingCtrlAidl.java"

# interfaces
.implements Lcom/unitech/dmservice/IDebuggingCtrlAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/dmservice/IDebuggingCtrlAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.dmservice.IDebuggingCtrlAidl"

.field static final TRANSACTION_saveLogcatFile:I = 0x1

.field static final TRANSACTION_stopSaveLogcat:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.dmservice.IDebuggingCtrlAidl"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IDebuggingCtrlAidl;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.unitech.dmservice.IDebuggingCtrlAidl"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/dmservice/IDebuggingCtrlAidl;
    .locals 1

    .line 187
    sget-object v0, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/dmservice/IDebuggingCtrlAidl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 181
    sput-object p0, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDebuggingCtrlAidl;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 178
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.unitech.dmservice.IDebuggingCtrlAidl"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 81
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub;->stopSaveLogcat(I)Landroid/os/Bundle;

    move-result-object p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 63
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 68
    invoke-virtual {p0, p1, v2, v3}, Lcom/unitech/dmservice/IDebuggingCtrlAidl$Stub;->saveLogcatFile(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1
.end method
