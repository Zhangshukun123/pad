.class Lcom/ayma/commonerp/base/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseFragment;->initView(Landroid/view/View;)V
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

    .line 61
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment$1;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseFragment$1;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->backClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/ayma/commonerp/base/BaseFragment$1;->this$0:Lcom/ayma/commonerp/base/BaseFragment;

    invoke-virtual {p1}, Lcom/ayma/commonerp/base/BaseFragment;->finishActivity()V

    :cond_0
    return-void
.end method
