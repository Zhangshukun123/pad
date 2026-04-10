.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->onBtnClearClick(Landroid/view/View;)V
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

    .line 276
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->clearData()V

    return-void
.end method
