.class public abstract Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;
.super Landroid/os/Binder;
.source "IDisplayCtrlAidl.java"

# interfaces
.implements Lcom/unitech/dmservice/IDisplayCtrlAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/dmservice/IDisplayCtrlAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.dmservice.IDisplayCtrlAidl"

.field static final TRANSACTION_DisableScreenLock:I = 0xa

.field static final TRANSACTION_GetDisplayTimeout:I = 0x2

.field static final TRANSACTION_GetFontSize:I = 0x6

.field static final TRANSACTION_GetScreenBacklightLevel:I = 0x8

.field static final TRANSACTION_GetStayAwake:I = 0x4

.field static final TRANSACTION_SetAutoBrightness:I = 0x9

.field static final TRANSACTION_SetAutoRotation:I = 0xb

.field static final TRANSACTION_SetDisplayTimeout:I = 0x1

.field static final TRANSACTION_SetFontSize:I = 0x5

.field static final TRANSACTION_SetScreenBacklightLevel:I = 0x7

.field static final TRANSACTION_SetScreenOrientation:I = 0xf

.field static final TRANSACTION_SetStayAwake:I = 0x3

.field static final TRANSACTION_ShowLockScreenNotification:I = 0x10

.field static final TRANSACTION_getGloveMode:I = 0xd

.field static final TRANSACTION_getScreenOrientation:I = 0x12

.field static final TRANSACTION_getScreenPixels:I = 0x11

.field static final TRANSACTION_setDisplayBatteryPercentage:I = 0xc

.field static final TRANSACTION_setGloveMode:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.dmservice.IDisplayCtrlAidl"

    .line 112
    invoke-virtual {p0, p0, v0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IDisplayCtrlAidl;
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
    const-string v0, "com.unitech.dmservice.IDisplayCtrlAidl"

    .line 123
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    instance-of v1, v0, Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lcom/unitech/dmservice/IDisplayCtrlAidl;

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/dmservice/IDisplayCtrlAidl;
    .locals 1

    .line 946
    sget-object v0, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/dmservice/IDisplayCtrlAidl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 936
    sget-object v0, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 940
    sput-object p0, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IDisplayCtrlAidl;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 937
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

    const-string v2, "com.unitech.dmservice.IDisplayCtrlAidl"

    if-eq p1, v0, :cond_16

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 403
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->getScreenOrientation()Landroid/os/Bundle;

    move-result-object p1

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 389
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->getScreenPixels()Landroid/os/Bundle;

    move-result-object p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 393
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 373
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 376
    :goto_2
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->ShowLockScreenNotification(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 379
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 383
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 357
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetScreenOrientation(I)Landroid/os/Bundle;

    move-result-object p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 363
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 367
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 341
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    .line 344
    :goto_5
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->setGloveMode(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 351
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 327
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->getGloveMode()Landroid/os/Bundle;

    move-result-object p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 331
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 335
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 311
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_8

    :cond_8
    const/4 p1, 0x0

    .line 314
    :goto_8
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->setDisplayBatteryPercentage(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 317
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 321
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 295
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_a

    :cond_a
    const/4 p1, 0x0

    .line 298
    :goto_a
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetAutoRotation(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 301
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 305
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 281
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->DisableScreenLock()Landroid/os/Bundle;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 289
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v1

    .line 265
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetAutoBrightness(I)Landroid/os/Bundle;

    move-result-object p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 271
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 275
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v1

    .line 251
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->GetScreenBacklightLevel()Landroid/os/Bundle;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 255
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 259
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v1

    .line 235
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetScreenBacklightLevel(I)Landroid/os/Bundle;

    move-result-object p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 241
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 245
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v1

    .line 221
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->GetFontSize()Landroid/os/Bundle;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_10

    .line 225
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 229
    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v1

    .line 205
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetFontSize(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 211
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 215
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v1

    .line 191
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->GetStayAwake()Landroid/os/Bundle;

    move-result-object p1

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 199
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v1

    .line 175
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetStayAwake(I)Landroid/os/Bundle;

    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 185
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v1

    .line 161
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->GetDisplayTimeout()Landroid/os/Bundle;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_14

    .line 165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 169
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v1

    .line 145
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IDisplayCtrlAidl$Stub;->SetDisplayTimeout(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_15

    .line 151
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 155
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    return v1

    .line 140
    :cond_16
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
