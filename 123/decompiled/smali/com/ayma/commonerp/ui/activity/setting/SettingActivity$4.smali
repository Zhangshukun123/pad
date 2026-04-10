.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;
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

    .line 181
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    const-string p3, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->showToast(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return p2

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iget-object p3, p3, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->asEtPwd:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p3}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/setting/SettingPresenter;->getConfig(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
