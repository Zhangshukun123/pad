.class public interface abstract Lcom/ayma/commonerp/service/uploaddata/IUploadDataModel;
.super Ljava/lang/Object;
.source "IUploadDataModel.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseModel;


# virtual methods
.method public abstract getCheckRepeat()Ljava/lang/String;
.end method

.method public abstract getCompany2Id()Ljava/lang/String;
.end method

.method public abstract getCompanyId()Ljava/lang/String;
.end method

.method public abstract getFleetId()Ljava/lang/String;
.end method

.method public abstract getGoDate2()Ljava/lang/String;
.end method

.method public abstract getStoreId()Ljava/lang/String;
.end method

.method public abstract getTeamId()Ljava/lang/String;
.end method

.method public abstract getTrainId()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract queryNeedUploadData(Lcom/ayma/commonerp/bean/OrderPositionBean;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/OrderPositionBean;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract querySaleTypeCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateSellDataUploadStatue(Ljava/util/List;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract uploadCashInfo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract uploadSellDataToServer(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ayma/base/mvp/ModelCallBack;",
            ")V"
        }
    .end annotation
.end method
