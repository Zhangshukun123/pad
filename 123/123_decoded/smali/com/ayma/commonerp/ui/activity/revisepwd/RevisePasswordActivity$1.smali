.class Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$1;
.super Ljava/lang/Object;
.source "RevisePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->finishActivity()V

    return-void
.end method
