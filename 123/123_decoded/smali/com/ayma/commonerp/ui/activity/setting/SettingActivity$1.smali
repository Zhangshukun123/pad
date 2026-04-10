.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 132
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asTvMachineSerialNumber:Landroid/widget/TextView;

    sget-object v0, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
