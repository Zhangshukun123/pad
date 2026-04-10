.class public abstract Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;
.super Landroid/os/Binder;
.source "AnalyticServiceAidlInterface.java"

# interfaces
.implements Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.analyticsservice.AnalyticServiceAidlInterface"

.field static final TRANSACTION_CleanHistoryData:I = 0x6

.field static final TRANSACTION_DeleteGeofenceRule:I = 0xf

.field static final TRANSACTION_EnableAnalysis:I = 0xb

.field static final TRANSACTION_EnableService:I = 0xc

.field static final TRANSACTION_GetCriteria:I = 0x9

.field static final TRANSACTION_GetCriteriaAdditionalConditions:I = 0x15

.field static final TRANSACTION_GetDiagMonData:I = 0xd

.field static final TRANSACTION_GetUnreadData:I = 0x12

.field static final TRANSACTION_QueryCount:I = 0x2

.field static final TRANSACTION_QueryHistoryData:I = 0x3

.field static final TRANSACTION_QueryLatestData:I = 0x1

.field static final TRANSACTION_QueryPeriodData:I = 0x13

.field static final TRANSACTION_RegisterEvent:I = 0xa

.field static final TRANSACTION_ResetCountTo:I = 0x7

.field static final TRANSACTION_RollbackDataQueryTime:I = 0x11

.field static final TRANSACTION_SetCriteria:I = 0x8

.field static final TRANSACTION_SetCriteriaAdditionalConditions:I = 0x14

.field static final TRANSACTION_SetDataQueryTime:I = 0x10

.field static final TRANSACTION_SetGeofenceRule:I = 0xe

.field static final TRANSACTION_SetHistoryCap:I = 0x5

.field static final TRANSACTION_SetMonitoringInterval:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.analyticsservice.AnalyticServiceAidlInterface"

    .line 141
    invoke-virtual {p0, p0, v0}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;
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
    const-string v0, "com.unitech.analyticsservice.AnalyticServiceAidlInterface"

    .line 152
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    instance-of v1, v0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    if-eqz v1, :cond_1

    .line 154
    check-cast v0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;
    .locals 1

    .line 1244
    sget-object v0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1238
    sput-object p0, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1235
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
    .locals 16
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

    move-object/from16 v10, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    const v2, 0x5f4e5446

    const/4 v12, 0x1

    const-string v3, "com.unitech.analyticsservice.AnalyticServiceAidlInterface"

    if-eq v0, v2, :cond_18

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    .line 575
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 557
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->GetCriteriaAdditionalConditions(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v12

    .line 532
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 544
    :goto_1
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetCriteriaAdditionalConditions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 551
    :cond_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v12

    .line 510
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    .line 519
    invoke-virtual/range {v0 .. v6}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->QueryPeriodData(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/os/Bundle;

    move-result-object v0

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 526
    :cond_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v12

    .line 492
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->GetUnreadData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 500
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 504
    :cond_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v12

    .line 474
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->RollbackDataQueryTime(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    .line 482
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 486
    :cond_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v12

    .line 454
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {v10, v0, v2, v3, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetDataQueryTime(Ljava/lang/String;JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    .line 464
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 468
    :cond_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v12

    .line 436
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->DeleteGeofenceRule(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    .line 444
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 448
    :cond_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v12

    .line 410
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v14

    .line 423
    invoke-virtual/range {v0 .. v9}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetGeofenceRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)Landroid/os/Bundle;

    move-result-object v0

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 430
    :cond_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v12

    .line 400
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v10, v0}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->GetDiagMonData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 384
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 387
    :goto_9
    invoke-virtual {v10, v0}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->EnableService(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 394
    :cond_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v12

    .line 364
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    .line 371
    :goto_b
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->EnableAnalysis(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    .line 374
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 378
    :cond_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v12

    .line 344
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    .line 351
    :goto_d
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->RegisterEvent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    .line 354
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 358
    :cond_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v12

    .line 326
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->GetCriteria(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    .line 334
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 338
    :cond_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v12

    .line 306
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetCriteria(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    .line 316
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 320
    :cond_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v12

    .line 286
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->ResetCountTo(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_11

    .line 296
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 300
    :cond_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v12

    .line 268
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->CleanHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    .line 276
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 280
    :cond_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v12

    .line 248
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetHistoryCap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13

    .line 258
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 262
    :cond_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v12

    .line 228
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v10, v0, v2, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->SetMonitoringInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    .line 238
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 242
    :cond_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v12

    .line 210
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->QueryHistoryData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    .line 218
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 222
    :cond_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    return v12

    .line 192
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->QueryCount(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16

    .line 200
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 204
    :cond_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    return v12

    .line 174
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v10, v0, v1}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->QueryLatestData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    .line 182
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 186
    :cond_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    return v12

    .line 169
    :cond_18
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
