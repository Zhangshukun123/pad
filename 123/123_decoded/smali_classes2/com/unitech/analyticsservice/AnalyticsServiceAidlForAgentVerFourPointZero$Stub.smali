.class public abstract Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;
.super Landroid/os/Binder;
.source "AnalyticsServiceAidlForAgentVerFourPointZero.java"

# interfaces
.implements Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.unitech.analyticsservice.AnalyticsServiceAidlForAgentVerFourPointZero"

.field static final TRANSACTION_CleanHistoryData:I = 0x1

.field static final TRANSACTION_DeleteGeofenceRule:I = 0x2

.field static final TRANSACTION_EnableAnalysis:I = 0x3

.field static final TRANSACTION_EnableService:I = 0x4

.field static final TRANSACTION_GetDiagMonData:I = 0x5

.field static final TRANSACTION_QueryCount:I = 0x6

.field static final TRANSACTION_QueryHistoryData:I = 0x7

.field static final TRANSACTION_QueryLatestData:I = 0x8

.field static final TRANSACTION_RegisterEvent:I = 0x9

.field static final TRANSACTION_ResetCountTo:I = 0xa

.field static final TRANSACTION_SetCriteria:I = 0xb

.field static final TRANSACTION_SetGeofenceRule:I = 0xc

.field static final TRANSACTION_SetHistoryCap:I = 0xd

.field static final TRANSACTION_SetMonitoringInterval:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unitech.analyticsservice.AnalyticsServiceAidlForAgentVerFourPointZero"

    .line 80
    invoke-virtual {p0, p0, v0}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;
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
    const-string v0, "com.unitech.analyticsservice.AnalyticsServiceAidlForAgentVerFourPointZero"

    .line 91
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    instance-of v1, v0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;

    if-eqz v1, :cond_1

    .line 93
    check-cast v0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;

    return-object v0

    .line 95
    :cond_1
    new-instance v0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;
    .locals 1

    .line 778
    sget-object v0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 772
    sput-object p0, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub$Proxy;->sDefaultImpl:Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 769
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
    .locals 11
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

    const-string v2, "com.unitech.analyticsservice.AnalyticsServiceAidlForAgentVerFourPointZero"

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 339
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->SetMonitoringInterval(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 321
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->SetHistoryCap(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 297
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    move-object v2, p0

    .line 308
    invoke-virtual/range {v2 .. v10}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->SetGeofenceRule(Ljava/lang/String;Ljava/lang/String;DDD)Landroid/os/Bundle;

    move-result-object p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 315
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 277
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-virtual {p0, p1, p4, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->SetCriteria(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 287
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 291
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 259
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->ResetCountTo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 271
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 239
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    .line 246
    :goto_5
    invoke-virtual {p0, p1, p4, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->RegisterEvent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 249
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 253
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 223
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->QueryLatestData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 229
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 233
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 207
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->QueryHistoryData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 213
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 217
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 191
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->QueryCount(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 201
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 181
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->GetDiagMonData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 165
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_a

    :cond_a
    const/4 p1, 0x0

    .line 168
    :goto_a
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->EnableService(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 171
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 175
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 145
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    goto :goto_c

    :cond_c
    const/4 p2, 0x0

    .line 152
    :goto_c
    invoke-virtual {p0, p1, p4, p2}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->EnableAnalysis(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 155
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 159
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v1

    .line 129
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->DeleteGeofenceRule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 139
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v1

    .line 113
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/unitech/analyticsservice/AnalyticsServiceAidlForAgentVerFourPointZero$Stub;->CleanHistoryData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 119
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 123
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v1

    .line 108
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
