.class Lcom/ayma/commonerp/base/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseFragment;->hideLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseFragment;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment$2;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment$2;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/base/BaseFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment$2;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseFragment;->access$000(Lcom/ayma/commonerp/base/BaseFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment$2;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseFragment;->access$000(Lcom/ayma/commonerp/base/BaseFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment$2;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ayma/commonerp/base/BaseFragment;->isLoading:Z

    :cond_0
    return-void
.end method
