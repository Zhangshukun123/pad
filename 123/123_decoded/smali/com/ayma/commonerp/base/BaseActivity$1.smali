.class Lcom/ayma/commonerp/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 116
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$1;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$1;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->backClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$1;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseActivity;->finishActivity()V

    :cond_0
    return-void
.end method
