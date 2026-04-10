.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;
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

    .line 196
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 201
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    const-string p2, "\u8bf7\u8f93\u5165\u5185\u5bb9"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return p3

    .line 205
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object v0, p2, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtQr:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 206
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->openSystemBrowser(Ljava/lang/String;)V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
