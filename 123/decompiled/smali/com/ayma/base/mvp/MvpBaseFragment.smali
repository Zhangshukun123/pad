.class public abstract Lcom/ayma/base/mvp/MvpBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "MvpBaseFragment.java"

# interfaces
.implements Lcom/ayma/base/mvp/IMvpBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ayma/base/mvp/IMvpBaseView;",
        "T:",
        "Lcom/ayma/base/mvp/MvpBasePresenter;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/ayma/base/mvp/IMvpBaseView;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public activity:Landroid/app/Activity;

.field private antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

.field private isFirstLoad:Z

.field public presenter:Lcom/ayma/base/mvp/MvpBasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->isFirstLoad:Z

    return-void
.end method


# virtual methods
.method public $(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public antiShake(Ljava/lang/Object;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/ayma/base/util/AntiShakeUtil;->getInstance()Lcom/ayma/base/util/AntiShakeUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    invoke-virtual {v0, p1}, Lcom/ayma/base/util/AntiShakeUtil;->antiShake(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x5dc

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeAutoRemove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;I)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/ayma/base/util/AntiShakeUtil;->getInstance()Lcom/ayma/base/util/AntiShakeUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeAutoRemove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public abstract getLayoutId()I
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    new-instance v0, Lcom/ayma/base/mvp/MvpBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/base/mvp/MvpBaseFragment$1;-><init>(Lcom/ayma/base/mvp/MvpBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public abstract loadData()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method protected onBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;->initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    iget-object p3, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    invoke-virtual {p1, p0}, Lcom/ayma/base/mvp/MvpBasePresenter;->attach(Lcom/ayma/base/mvp/IMvpBaseView;)V

    .line 67
    iget-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ayma/base/mvp/MvpBaseFragment;->initView(Landroid/view/View;)V

    .line 68
    iget-object p1, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 74
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    invoke-virtual {v0}, Lcom/ayma/base/mvp/MvpBasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->rootView:Landroid/view/View;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->isFirstLoad:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->isFirstLoad:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseFragment;->loadData()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->isFirstLoad:Z

    :cond_0
    return-void
.end method

.method public removeAntiShakeKey(Ljava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseFragment;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/base/util/AntiShakeUtil;->removeAntiShake(Ljava/lang/Object;)V

    return-void
.end method
