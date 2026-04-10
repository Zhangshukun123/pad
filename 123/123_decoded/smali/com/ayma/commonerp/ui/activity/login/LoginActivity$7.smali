.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->generateOutCode(Ljava/lang/String;)V
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

    .line 384
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 387
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$100(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
