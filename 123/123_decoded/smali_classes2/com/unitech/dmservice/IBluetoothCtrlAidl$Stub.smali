.class public abstract Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;
.super Landroid/os/Binder;
.source "IBluetoothCtrlAidl.java"

# interfaces
.implements Lcom/unitech/dmservice/IBluetoothCtrlAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/dmservice/IBluetoothCtrlAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.dmservice.IBluetoothCtrlAidl"

.field static final TRANSACTION_enableBluetooth:I = 0x5

.field static final TRANSACTION_getActiveBluetoothProfile:I = 0x4

.field static final TRANSACTION_getBluetoothConnectStatus:I = 0x2

.field static final TRANSACTION_getBluetoothMacAddress:I = 0x1

.field static final TRANSACTION_getBluetoothVersion:I = 0x3

.field static final TRANSACTION_setBluetoothName:I = 0x7

.field static final TRANSACTION_setScanMode:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.dmservice.IBluetoothCtrlAidl"

    .line 56
    invoke-virtual {p0, p0, v0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IBluetoothCtrlAidl;
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
    const-string v0, "com.unitech.dmservice.IBluetoothCtrlAidl"

    .line 67
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    instance-of v1, v0, Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/dmservice/IBluetoothCtrlAidl;
    .locals 1

    .line 417
    sget-object v0, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/dmservice/IBluetoothCtrlAidl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 411
    sput-object p0, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IBluetoothCtrlAidl;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 408
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
    .locals 3
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.unitech.dmservice.IBluetoothCtrlAidl"

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->setBluetoothName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 161
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->setScanMode(I)Landroid/os/Bundle;

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 145
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 148
    :goto_2
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->enableBluetooth(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 131
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->getActiveBluetoothProfile()Landroid/os/Bundle;

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 117
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->getBluetoothVersion()Landroid/os/Bundle;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 125
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 103
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->getBluetoothConnectStatus()Landroid/os/Bundle;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 89
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/unitech/dmservice/IBluetoothCtrlAidl$Stub;->getBluetoothMacAddress()Landroid/os/Bundle;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 97
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 84
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
