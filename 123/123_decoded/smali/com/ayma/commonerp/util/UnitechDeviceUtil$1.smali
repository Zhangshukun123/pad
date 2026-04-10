.class Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;
.super Ljava/lang/Object;
.source "UnitechDeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/util/UnitechDeviceUtil;->getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$callback:Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 43
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 55
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "android.os.SystemProperties"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 58
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.serialno"

    aput-object v3, v2, v5

    .line 59
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->isSNEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;

    iget-object v2, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1}, Lcom/unitech/api/deviceinfo/DeviceInfoCtrl;->getDeviceSerialNumber()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorCode"

    .line 64
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "getDeviceSerialNumber"

    .line 67
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_2
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$1;-><init>(Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6\u8bbe\u5907\u5e8f\u5217\u53f7\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1$2;-><init>(Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
