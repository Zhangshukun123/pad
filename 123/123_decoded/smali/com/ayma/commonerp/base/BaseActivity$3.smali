.class Lcom/ayma/commonerp/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseActivity;->hideLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$3;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$3;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$3;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseActivity;->access$000(Lcom/ayma/commonerp/base/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$3;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseActivity;->access$000(Lcom/ayma/commonerp/base/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 438
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$3;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ayma/commonerp/base/BaseActivity;->isLoading:Z

    :cond_0
    return-void
.end method
