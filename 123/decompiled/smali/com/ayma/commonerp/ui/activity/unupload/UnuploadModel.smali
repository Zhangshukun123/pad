.class public Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "UnuploadModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/unupload/IUnuploadModel;


# instance fields
.field private unuploadDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->unuploadDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteOrderByNo(Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V

    invoke-static {v0}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUnuploadData(Lcom/ayma/base/mvp/ModelCallBack;)V
    .locals 2

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->unuploadDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->litepalUseeInit()V

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->litepalUse:Lcom/ayma/commonerp/litepal/LitepalUse;

    invoke-virtual {v0}, Lcom/ayma/commonerp/litepal/LitepalUse;->queryNeedUploadSellDataList()Ljava/util/List;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->unuploadDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-interface {p1}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUnuploadDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadModel;->unuploadDatas:Ljava/util/List;

    return-object v0
.end method
