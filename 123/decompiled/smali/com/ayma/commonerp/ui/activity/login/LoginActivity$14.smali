.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$14;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$14;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->show(Landroid/content/Context;)V

    return-void
.end method
