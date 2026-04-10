.class Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;
.super Ljava/lang/Object;
.source "SystemSettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->access$300(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Lcom/ayma/commonerp/util/AudioMngHelper;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->access$300(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)Lcom/ayma/commonerp/util/AudioMngHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/util/AudioMngHelper;->setVoice100(I)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
