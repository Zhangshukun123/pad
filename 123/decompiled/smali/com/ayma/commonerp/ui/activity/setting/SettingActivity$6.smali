.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->init()V
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

    .line 212
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    const-string p2, "\u8bf7\u8f93\u5165\u670d\u52a1\u5668\u5730\u5740"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->etNetAddress:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
