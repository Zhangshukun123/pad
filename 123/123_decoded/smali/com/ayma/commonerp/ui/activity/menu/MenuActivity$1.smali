.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 0

    .line 303
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    return-void
.end method
