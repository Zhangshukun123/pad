.class public Lcom/unitech/api/dmi/DmiCtrl;
.super Ljava/lang/Object;
.source "DmiCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.dmi"

.field private static final ACTION_BIND_SERVICE_DCMO:Ljava/lang/String; = "com.unitech.dmservice.action.Dcmo"

.field private static final ACTION_BIND_SERVICE_NEW_DMI:Ljava/lang/String; = "com.unitech.dmiservice.action.bind"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final CLS_API_SERVICE_NEW_DMI:Ljava/lang/String; = "com.unitech.dmiservice.DmiService"

.field public static final DISABLE:I = 0x0

.field public static final DMI_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field public static final DMI_CAMERA:Ljava/lang/String; = "Camera"

.field public static final DMI_DOZE_MODE:Ljava/lang/String; = "DozeMode"

.field public static final DMI_FLASHLIGHT:Ljava/lang/String; = "Flashlight"

.field private static final DMI_FLASHLIGHT_OLD:Ljava/lang/String; = "flash"

.field public static final DMI_GPS:Ljava/lang/String; = "GPS"

.field private static final DMI_GPS_OLD:Ljava/lang/String; = "gps"

.field public static final DMI_PHYSICAL_KEYBOARD:Ljava/lang/String; = "PhysicalKeyboard"

.field private static final DMI_PHYSICAL_KEYBOARD_OLD:Ljava/lang/String; = "keyboard"

.field public static final DMI_TOUCH:Ljava/lang/String; = "Touch"

.field public static final DMI_USB:Ljava/lang/String; = "USB"

.field public static final DMI_USB_MTP_MODE:Ljava/lang/String; = "UsbMtpMode"

.field private static final DMI_USB_MTP_MODE_OLD:Ljava/lang/String; = "usb_mtp_mode"

.field private static final DMI_USB_OLD:Ljava/lang/String; = "usb"

.field public static final DMI_VIRTUAL_KEYBOARD:Ljava/lang/String; = "VirtualKeyboard"

.field private static final DMI_VIRTUAL_KEYBOARD_OLD:Ljava/lang/String; = "ime"

.field public static final DMI_WLAN:Ljava/lang/String; = "WLAN"

.field public static final DMI_WWAN:Ljava/lang/String; = "WWAN"

.field private static final DmiCtrlLock:Ljava/lang/Object;

.field public static final ENABLE:I = 0x1

.field public static final KEY_MESSAGE:Ljava/lang/String; = "Message"

.field public static final KEY_MODULE:Ljava/lang/String; = "Module"

.field public static final KEY_RESULT:Ljava/lang/String; = "Result"

.field public static final KEY_STATUS:Ljava/lang/String; = "Status"

.field public static final NOT_SUPPORT:I = 0x2

.field private static NewPackageFlag:Z = false

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field private static final PKG_API_SERVICE_NEW_DMI:Ljava/lang/String; = "com.unitech.dmiservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnitechSDK"

.field static dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

.field private static mDmServiceHandler:Lcom/unitech/api/util/ServiceHandler;

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

.field private static mServiceHandlerOld:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unitech/api/dmi/DmiCtrl;->DmiCtrlLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    sput-boolean v0, Lcom/unitech/api/dmi/DmiCtrl;->NewPackageFlag:Z

    const/4 v0, 0x0

    .line 289
    sput-object v0, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 105
    sget-boolean p1, Lcom/unitech/api/machine/Machine;->WD200:Z

    const-string v0, "com.unitech.dmservice.action.dmi"

    const-string v1, "com.unitech.dmservice"

    const-string v2, "com.unitech.dmiservice.action.bind"

    const-string v3, "com.unitech.dmiservice"

    if-eqz p1, :cond_0

    .line 109
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_3

    .line 110
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v4, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createWD200DMIServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v5

    invoke-direct {p1, v4, v3, v2, v5}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 113
    :cond_0
    sget-boolean p1, Lcom/unitech/api/machine/Machine;->HT730:Z

    if-eqz p1, :cond_1

    .line 117
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_3

    .line 118
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v4, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createDMIServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v5

    invoke-direct {p1, v4, v3, v2, v5}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, v3}, Lcom/unitech/api/dmi/DmiCtrl;->checkPkgExist(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/unitech/api/dmi/DmiCtrl;->NewPackageFlag:Z

    .line 125
    sget-object v4, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v4, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "UnitechSDK"

    const-string v4, "DmiCtrl, com.unitech.dmiservice is Exist..."

    .line 128
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance p1, Landroid/content/ComponentName;

    const-string v4, "com.unitech.dmiservice.DmiService"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v3, Lcom/unitech/api/util/ServiceHandler;

    iget-object v4, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createDMIServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v5

    invoke-direct {v3, v4, p1, v2, v5}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v3, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    goto :goto_0

    .line 135
    :cond_2
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v2, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 137
    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mDmServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 141
    :cond_3
    :goto_0
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mDmServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_4

    .line 142
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v2, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v3

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mDmServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 145
    :cond_4
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandlerOld:Lcom/unitech/api/util/ServiceHandler;

    if-nez p1, :cond_5

    .line 146
    new-instance p1, Lcom/unitech/api/util/ServiceHandler;

    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->createServiceConnectionCallbackOld()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    const-string v3, "com.unitech.dmservice.action.Dcmo"

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandlerOld:Lcom/unitech/api/util/ServiceHandler;

    :cond_5
    return-void
.end method

.method private checkPkgExist(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgApiServiceProgrammablekey"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->getAllInstalledPkgNameList()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private correctItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 643
    sget-boolean v1, Lcom/unitech/api/machine/Machine;->WD200:Z

    const-string v3, "UsbMtpMode"

    const-string v4, "VirtualKeyboard"

    const-string v5, "PhysicalKeyboard"

    const-string v6, "USB"

    const-string v7, "GPS"

    const-string v8, "Flashlight"

    const-string v9, "keyboard"

    const-string v10, "flash"

    const-string v11, "usb"

    const-string v12, "ime"

    const-string v13, "gps"

    const-string v14, "usb_mtp_mode"

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/unitech/api/machine/Machine;->HT730:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/unitech/api/dmi/DmiCtrl;->NewPackageFlag:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 659
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v1, v15, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    goto :goto_5

    :cond_2
    return-object v14

    :cond_3
    return-object v12

    :cond_4
    return-object v9

    :cond_5
    return-object v11

    :cond_6
    return-object v13

    :cond_7
    return-object v10

    .line 644
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto :goto_3

    :sswitch_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_4

    :sswitch_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_4

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v1, -0x1

    :goto_4
    if-eqz v1, :cond_f

    if-eq v1, v2, :cond_e

    if-eq v1, v15, :cond_d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_a

    :goto_5
    return-object v0

    :cond_a
    return-object v3

    :cond_b
    return-object v4

    :cond_c
    return-object v5

    :cond_d
    return-object v6

    :cond_e
    return-object v7

    :cond_f
    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2e618c0e -> :sswitch_5
        -0x1fb5ca02 -> :sswitch_4
        0x1148a -> :sswitch_3
        0x14964 -> :sswitch_2
        0x304d9746 -> :sswitch_1
        0x30d48ae8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x17d0f32c -> :sswitch_b
        0x190aa -> :sswitch_a
        0x197c1 -> :sswitch_9
        0x1c584 -> :sswitch_8
        0x5cfeff0 -> :sswitch_7
        0x1e0673e7 -> :sswitch_6
    .end sparse-switch
.end method

.method private createDMIServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 360
    new-instance v0, Lcom/unitech/api/dmi/DmiCtrl$4;

    invoke-direct {v0, p0}, Lcom/unitech/api/dmi/DmiCtrl$4;-><init>(Lcom/unitech/api/dmi/DmiCtrl;)V

    return-object v0
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 291
    new-instance v0, Lcom/unitech/api/dmi/DmiCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/dmi/DmiCtrl$1;-><init>(Lcom/unitech/api/dmi/DmiCtrl;)V

    return-object v0
.end method

.method private createServiceConnectionCallbackOld()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 314
    new-instance v0, Lcom/unitech/api/dmi/DmiCtrl$2;

    invoke-direct {v0, p0}, Lcom/unitech/api/dmi/DmiCtrl$2;-><init>(Lcom/unitech/api/dmi/DmiCtrl;)V

    return-object v0
.end method

.method private createWD200DMIServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 337
    new-instance v0, Lcom/unitech/api/dmi/DmiCtrl$3;

    invoke-direct {v0, p0}, Lcom/unitech/api/dmi/DmiCtrl$3;-><init>(Lcom/unitech/api/dmi/DmiCtrl;)V

    return-object v0
.end method

.method private ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getAllInstalledPkgNameList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 170
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 189
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 194
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 205
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceBundle",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 210
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 211
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindDMService()Z
    .locals 2

    .line 401
    sget-object v0, Lcom/unitech/api/dmi/DmiCtrl;->mDmServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    .line 402
    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    if-eqz v1, :cond_0

    return v0

    .line 404
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/dmi/DmiCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    sget-object v0, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandlerOld:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private tryToBindService()Z
    .locals 1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/unitech/api/dmi/DmiCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unitech/api/dmi/DmiCtrl;->ensureNotOnMainThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    sget-object v0, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public DCMO_Get(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmdData"
        }
    .end annotation

    const-string v0, "Result"

    const-string v1, "Status"

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DmiCtrl, DCMO_Get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnitechSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p1}, Lcom/unitech/api/dmi/DmiCtrl;->correctItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DozeMode"

    .line 444
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/unitech/api/machine/Machine;->HT730:Z

    if-eqz v2, :cond_0

    const-string v2, "Scanner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->tryToBindService()Z

    goto :goto_1

    .line 445
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->tryToBindDMService()Z

    .line 450
    :goto_1
    sget-object v2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const-string p1, "DmiCtrl, DmiCtrlAidl = null"

    .line 451
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 453
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "DmiCtrl, DCMO_Get failed: cmdData cannot be empty."

    .line 454
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 456
    :cond_3
    sget-object v2, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v5

    const/4 v2, 0x0

    .line 478
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 480
    sget-object v8, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p1, v9, v2

    invoke-virtual {v8, v9}, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->GetModuleStatus([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 481
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 482
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2

    .line 485
    :cond_4
    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 488
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    :cond_5
    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DmiCtrl, DCMO_Get, ServiceResult= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", ServiceStatus="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "DmiCtrl, DCMO_Get success"

    .line 495
    invoke-direct {p0, p1, v2, v0}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string v0, "DmiCtrl, DCMO_Get fail"

    .line 497
    invoke-direct {p0, p1, v4, v0}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 501
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 502
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "DmiCtrlAidl.GetModuleStatus exception: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 505
    :goto_3
    sget-object v0, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v5, v6}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public DCMO_Set(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmdData",
            "enable"
        }
    .end annotation

    const-string v0, "Result"

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmiCtrl, DCMO_Set, CmdData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnitechSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string p1, "DmiCtrl, DCMO_Set failed: cmdData cannot be empty."

    .line 546
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    const-string p1, "DmiCtrl, DCMO_Set failed, parameter enable is out of range (0 or 1)."

    .line 548
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 550
    :cond_1
    invoke-direct {p0, p1}, Lcom/unitech/api/dmi/DmiCtrl;->correctItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCMO_Set: cmdData after correction: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DozeMode"

    .line 552
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/unitech/api/machine/Machine;->HT730:Z

    if-eqz v1, :cond_2

    const-string v1, "Scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->tryToBindService()Z

    goto :goto_1

    .line 553
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/unitech/api/dmi/DmiCtrl;->tryToBindDMService()Z

    .line 557
    :goto_1
    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    if-nez v1, :cond_4

    const-string p1, "DmiCtrl, DmiCtrlAidl = null"

    .line 558
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 560
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "DmiCtrl, DCMO_Get failed: cmdData cannot be empty."

    .line 561
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 563
    :cond_5
    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getTicket()J

    move-result-wide v4

    const/4 v1, 0x0

    .line 583
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    if-ne p2, v3, :cond_6

    .line 587
    sget-object p2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {p2, v6}, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->EnableModule([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2

    .line 589
    :cond_6
    sget-object p2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {p2, v6}, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->DisableModule([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p2

    .line 592
    :goto_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    const-string v8, "Status"

    if-eqz v6, :cond_a

    .line 593
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 594
    const-class v9, Ljava/lang/Boolean;

    if-ne v6, v9, :cond_7

    .line 595
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_4

    .line 596
    :cond_7
    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_9

    .line 597
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_4

    .line 599
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_4
    const-string v9, "Message"

    .line 601
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 604
    sget-object v10, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p1, v11, v1

    invoke-virtual {v10, v11}, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->GetModuleStatus([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 605
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_5

    .line 609
    :cond_a
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 610
    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, ""

    .line 612
    :goto_5
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DmiCtrl, DCMO_Set, ServiceResult= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", ServiceStatus="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 616
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "DmiCtrl, DCMO_Set success"

    .line 617
    invoke-direct {p0, p2, v1, v2}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_6

    .line 619
    :cond_b
    invoke-direct {p0, p2, v1, v9}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_6

    .line 621
    :cond_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "DmiCtrl, DCMO_Set fail"

    .line 622
    invoke-direct {p0, p2, v3, v2}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_6

    .line 624
    :cond_d
    invoke-direct {p0, p2, v3, v9}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 627
    :goto_6
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    invoke-virtual {p2, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 632
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/Object;

    .line 633
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "DmiCtrlAidl.GetModuleStatus exception: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/dmi/DmiCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 636
    :goto_7
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p2
.end method

.method convertToAIDLFunc(Landroid/os/IBinder;)Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iBinder"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 270
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    const-string v1, "asInterface"

    .line 276
    invoke-virtual {p0, v5, v1}, Lcom/unitech/api/dmi/DmiCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 278
    sget-object v2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    if-nez v2, :cond_2

    new-instance v2, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    invoke-direct {v2}, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;-><init>()V

    sput-object v2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    .line 279
    :cond_2
    sget-object v2, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    iput-object p1, v2, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    .line 280
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    iget-object v1, v1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EnableModule"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/dmi/DmiCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->EnableModule:Ljava/lang/reflect/Method;

    .line 281
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    iget-object v1, v1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DisableModule"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/dmi/DmiCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->DisableModule:Ljava/lang/reflect/Method;

    .line 282
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    sget-object v1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;

    iget-object v1, v1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->dmiInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "GetModuleStatus"

    invoke-virtual {p0, v1, v2}, Lcom/unitech/api/dmi/DmiCtrl;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p1, Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;->GetModuleStatus:Ljava/lang/reflect/Method;

    .line 283
    sget-object p1, Lcom/unitech/api/dmi/DmiCtrl;->dmiAIDL:Lcom/unitech/api/dmi/DmiCtrl$DMIAIDL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 256
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
