.class public interface abstract Lcom/ayma/commonerp/service/uploaddata/UploadDataContact$IUploadDataPresenter;
.super Ljava/lang/Object;
.source "UploadDataContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/service/uploaddata/UploadDataContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUploadDataPresenter"
.end annotation


# virtual methods
.method public abstract initHandler()V
.end method

.method public abstract queryNeedUploadData()V
.end method

.method public abstract removeCheckUploadRunnable()V
.end method

.method public abstract startCheckUploadRunnable(J)V
.end method

.method public abstract updateSellDataStatue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadSellDataToServer(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation
.end method
