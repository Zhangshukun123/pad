.class public abstract Lcom/ayma/base/mvp/MvpBasePresenter;
.super Ljava/lang/Object;
.source "MvpBasePresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/IMvpBasePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ayma/base/mvp/IMvpBaseView;",
        "T:",
        "Lcom/ayma/base/mvp/MvpBaseModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ayma/base/mvp/IMvpBasePresenter;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected model:Lcom/ayma/base/mvp/MvpBaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected view:Lcom/ayma/base/mvp/IMvpBaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->TAG:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBasePresenter;->initModel()Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    return-void
.end method


# virtual methods
.method protected attach(Lcom/ayma/base/mvp/IMvpBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method

.method protected detach()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method

.method protected abstract initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected isViewAttach()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ayma/base/mvp/MvpBasePresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/ayma/base/mvp/MvpBasePresenter;->detach()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
