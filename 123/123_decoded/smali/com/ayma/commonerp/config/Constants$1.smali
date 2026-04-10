.class Lcom/ayma/commonerp/config/Constants$1;
.super Ljava/util/ArrayList;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const-class v0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$1;->add(Ljava/lang/Object;)Z

    .line 93
    const-class v0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$1;->add(Ljava/lang/Object;)Z

    .line 94
    const-class v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$1;->add(Ljava/lang/Object;)Z

    .line 95
    const-class v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
