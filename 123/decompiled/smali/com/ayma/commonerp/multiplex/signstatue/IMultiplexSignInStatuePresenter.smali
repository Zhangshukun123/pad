.class public interface abstract Lcom/ayma/commonerp/multiplex/signstatue/IMultiplexSignInStatuePresenter;
.super Ljava/lang/Object;
.source "IMultiplexSignInStatuePresenter.java"


# virtual methods
.method public abstract deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract getSignInStatueFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSignInStatueFromServer(Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveSignInStatue(ZLcom/ayma/base/mvp/ModelCallBack;)V
.end method
