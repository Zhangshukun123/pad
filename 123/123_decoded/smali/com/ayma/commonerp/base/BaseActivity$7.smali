.class Lcom/ayma/commonerp/base/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 886
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v1}, Lcom/ayma/commonerp/base/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fee666666666666L    # 0.95

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 889
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 890
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 891
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseActivity$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
