.class public Lcom/ayma/commonerp/util/UnitechDeviceUtil;
.super Ljava/lang/Object;
.source "UnitechDeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil$1;-><init>(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isSNEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
