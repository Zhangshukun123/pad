.class Lcom/ayma/commonerp/base/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseActivity;->showTipsOnTop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseActivity;

.field final synthetic val$clTitle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$5;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/base/BaseActivity$5;->val$clTitle:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$5;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$5;->val$clTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
