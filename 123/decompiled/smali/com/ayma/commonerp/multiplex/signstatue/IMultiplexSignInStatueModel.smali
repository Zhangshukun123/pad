.class public interface abstract Lcom/ayma/commonerp/multiplex/signstatue/IMultiplexSignInStatueModel;
.super Ljava/lang/Object;
.source "IMultiplexSignInStatueModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract deleteSignInRecordBeforeNDay(ILcom/ayma/base/mvp/ModelCallBack;)V
.end method

.method public abstract fetchSignInStatueFromServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
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

.method public abstract saveOrUpdateSignInStatue(Lcom/ayma/commonerp/bean/SignIn;Lcom/ayma/base/mvp/ModelCallBack;)V
.end method
