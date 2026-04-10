.class public abstract Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;
.super Landroid/os/Binder;
.source "IWlanCtrlAidl.java"

# interfaces
.implements Lcom/unitech/dmservice/IWlanCtrlAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/dmservice/IWlanCtrlAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.dmservice.IWlanCtrlAidl"

.field static final TRANSACTION_connectProfile:I = 0x9

.field static final TRANSACTION_deleteProfile:I = 0x7

.field static final TRANSACTION_getConnectedProfile:I = 0xa

.field static final TRANSACTION_getIpAssignmentProfile:I = 0x4

.field static final TRANSACTION_getProxyProfile:I = 0x6

.field static final TRANSACTION_getWLANConnectState:I = 0x18

.field static final TRANSACTION_getWLANIpAddress:I = 0x16

.field static final TRANSACTION_getWLANMACAddress:I = 0x15

.field static final TRANSACTION_getWLANSignalStrength:I = 0x17

.field static final TRANSACTION_getWifiProfile:I = 0x2

.field static final TRANSACTION_getWifiRandomizedMac:I = 0x13

.field static final TRANSACTION_isProfileExisted:I = 0x8

.field static final TRANSACTION_isProfilesEmpty:I = 0xc

.field static final TRANSACTION_removeAllProfiles:I = 0xb

.field static final TRANSACTION_setCaptivePortalHttpUrl:I = 0xe

.field static final TRANSACTION_setCaptivePortalHttpsUrl:I = 0x10

.field static final TRANSACTION_setCaptivePortalMode:I = 0xd

.field static final TRANSACTION_setCaptivePortalUseHttps:I = 0xf

.field static final TRANSACTION_setIpAssignmentProfile:I = 0x3

.field static final TRANSACTION_setProxyProfile:I = 0x5

.field static final TRANSACTION_setWifiAdapter:I = 0x11

.field static final TRANSACTION_setWifiEnterpriseProfile:I = 0x12

.field static final TRANSACTION_setWifiHotSpotConfiguration:I = 0x1c

.field static final TRANSACTION_setWifiHotSpotEnable:I = 0x1b

.field static final TRANSACTION_setWifiNetworkNotification:I = 0x1a

.field static final TRANSACTION_setWifiProfile:I = 0x1

.field static final TRANSACTION_setWifiRandomizedMac:I = 0x14

.field static final TRANSACTION_setWifiTurnOnAuto:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.dmservice.IWlanCtrlAidl"

    .line 136
    invoke-virtual {p0, p0, v0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/dmservice/IWlanCtrlAidl;
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
    const-string v0, "com.unitech.dmservice.IWlanCtrlAidl"

    .line 147
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    instance-of v1, v0, Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-eqz v1, :cond_1

    .line 149
    check-cast v0, Lcom/unitech/dmservice/IWlanCtrlAidl;

    return-object v0

    .line 151
    :cond_1
    new-instance v0, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/dmservice/IWlanCtrlAidl;
    .locals 1

    .line 1450
    sget-object v0, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/dmservice/IWlanCtrlAidl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1440
    sget-object v0, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1444
    sput-object p0, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub$Proxy;->sDefaultImpl:Lcom/unitech/dmservice/IWlanCtrlAidl;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1441
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
    .locals 10
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

    const-string v2, "com.unitech.dmservice.IWlanCtrlAidl"

    if-eq p1, v0, :cond_22

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 621
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move-object v2, p0

    .line 632
    invoke-virtual/range {v2 .. v7}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiHotSpotConfiguration(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/os/Bundle;

    move-result-object p1

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 635
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 605
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 608
    :goto_2
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiHotSpotEnable(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 611
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 615
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 589
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 592
    :goto_4
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiNetworkNotification(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 595
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 599
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 573
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    .line 576
    :goto_6
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiTurnOnAuto(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 579
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 583
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 559
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWLANConnectState()Landroid/os/Bundle;

    move-result-object p1

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 563
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 567
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 545
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWLANSignalStrength()Landroid/os/Bundle;

    move-result-object p1

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 549
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 553
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 531
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWLANIpAddress()Landroid/os/Bundle;

    move-result-object p1

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 535
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 539
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 517
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWLANMACAddress()Landroid/os/Bundle;

    move-result-object p1

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 521
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 525
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 499
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    goto :goto_c

    :cond_c
    const/4 p2, 0x0

    .line 504
    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiRandomizedMac(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 507
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 511
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v1

    .line 483
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWifiRandomizedMac(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 489
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 493
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v1

    .line 461
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 470
    invoke-virtual {p0, p1, p4, v2, p2}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiEnterpriseProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 473
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 477
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v1

    .line 445
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_10

    :cond_10
    const/4 p1, 0x0

    .line 448
    :goto_10
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiAdapter(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 451
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 455
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v1

    .line 429
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setCaptivePortalHttpsUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 435
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 439
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v1

    .line 413
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 416
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setCaptivePortalUseHttps(I)Landroid/os/Bundle;

    move-result-object p1

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 419
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 423
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v1

    .line 397
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setCaptivePortalHttpUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_14

    .line 403
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 407
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v1

    .line 381
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 384
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setCaptivePortalMode(I)Landroid/os/Bundle;

    move-result-object p1

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_15

    .line 387
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 391
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    return v1

    .line 367
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->isProfilesEmpty()Landroid/os/Bundle;

    move-result-object p1

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_16

    .line 371
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 375
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    return v1

    .line 353
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->removeAllProfiles()Landroid/os/Bundle;

    move-result-object p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_17

    .line 357
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 361
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    return v1

    .line 339
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getConnectedProfile()Landroid/os/Bundle;

    move-result-object p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_18

    .line 343
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    .line 347
    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_18
    return v1

    .line 323
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->connectProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_19

    .line 329
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 333
    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    return v1

    .line 307
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->isProfileExisted(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1a

    .line 313
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 317
    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    return v1

    .line 291
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->deleteProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1b

    .line 297
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 301
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    return v1

    .line 275
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getProxyProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1c

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 285
    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    return v1

    .line 249
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 262
    invoke-virtual/range {v2 .. v8}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setProxyProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1d

    .line 265
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 269
    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v1

    .line 233
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getIpAssignmentProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1e

    .line 239
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 243
    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    return v1

    .line 205
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    .line 220
    invoke-virtual/range {v2 .. v9}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setIpAssignmentProfile(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1f

    .line 223
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 227
    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f
    return v1

    .line 189
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->getWifiProfile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_20

    .line 195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 199
    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    return v1

    .line 169
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 176
    invoke-virtual {p0, p1, p4, p2}, Lcom/unitech/dmservice/IWlanCtrlAidl$Stub;->setWifiProfile(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_21

    .line 179
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 183
    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    return v1

    .line 164
    :cond_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
