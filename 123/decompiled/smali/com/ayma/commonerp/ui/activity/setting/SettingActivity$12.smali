.class Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->openSystemBrowser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 512
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 513
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;->val$url:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 515
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity$12;->this$0:Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
