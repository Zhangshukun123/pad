.class Lcom/ayma/base/mvp/MvpBaseFragment$1;
.super Ljava/lang/Object;
.source "MvpBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/base/mvp/MvpBaseFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/base/mvp/MvpBaseFragment;


# direct methods
.method constructor <init>(Lcom/ayma/base/mvp/MvpBaseFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment$1;->this$0:Lcom/ayma/base/mvp/MvpBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment$1;->this$0:Lcom/ayma/base/mvp/MvpBaseFragment;

    invoke-virtual {p1}, Lcom/ayma/base/mvp/MvpBaseFragment;->onBackPress()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
