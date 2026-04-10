.class public abstract Lcom/ayma/base/mvp/MvpBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MvpBaseActivity.java"

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
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/ayma/base/mvp/IMvpBaseView;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

.field public context:Landroid/content/Context;

.field public presenter:Lcom/ayma/base/mvp/MvpBasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public $(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/ayma/base/mvp/MvpBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public antiShake(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/ayma/base/util/AntiShakeUtil;->getInstance()Lcom/ayma/base/util/AntiShakeUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    invoke-virtual {v0, p1}, Lcom/ayma/base/util/AntiShakeUtil;->antiShake(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x5dc

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeAutoRemove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public antiShakeAutoRemove(Ljava/lang/Object;I)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/ayma/base/util/AntiShakeUtil;->getInstance()Lcom/ayma/base/util/AntiShakeUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/base/util/AntiShakeUtil;->antiShakeAutoRemove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 89
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    .line 35
    invoke-virtual {p1, p0}, Lcom/ayma/base/mvp/MvpBasePresenter;->attach(Lcom/ayma/base/mvp/IMvpBaseView;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    invoke-virtual {v0}, Lcom/ayma/base/mvp/MvpBasePresenter;->onDestroy()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 52
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    invoke-virtual {v0}, Lcom/ayma/base/mvp/MvpBasePresenter;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "input_method"

    .line 58
    invoke-virtual {p0, v0}, Lcom/ayma/base/mvp/MvpBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAntiShakeKey(Ljava/lang/Object;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBaseActivity;->antiShakeUtil:Lcom/ayma/base/util/AntiShakeUtil;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/base/util/AntiShakeUtil;->removeAntiShake(Ljava/lang/Object;)V

    return-void
.end method
