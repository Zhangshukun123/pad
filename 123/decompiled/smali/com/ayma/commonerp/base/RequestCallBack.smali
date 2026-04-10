.class public abstract Lcom/ayma/commonerp/base/RequestCallBack;
.super Ljava/lang/Object;
.source "RequestCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ayma/commonerp/base/BasePresenter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private presenter:Lcom/ayma/commonerp/base/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/ayma/commonerp/base/BasePresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ayma/commonerp/base/RequestCallBack;->presenter:Lcom/ayma/commonerp/base/BasePresenter;

    return-void
.end method


# virtual methods
.method public authFailure()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/base/RequestCallBack;->presenter:Lcom/ayma/commonerp/base/BasePresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/base/BasePresenter;->needLogin()V

    return-void
.end method

.method public checkAuth(Lcom/ayma/commonerp/bean/RequestHeaderBean;)Z
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "402"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/ayma/commonerp/base/RequestCallBack;->authFailure()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract requestError(Ljava/lang/Throwable;)V
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/base/RequestCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract requestSuccess()V
.end method
