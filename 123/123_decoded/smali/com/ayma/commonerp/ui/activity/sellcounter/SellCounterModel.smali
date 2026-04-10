.class public Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "SellCounterModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sellcounter/ISellCounterModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;->generateThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;->baseHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public checkOpenShop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ayma/base/mvp/ModelParamCallBack<",
            "Lcom/ayma/commonerp/bean/OpenShopBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    new-instance v6, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    invoke-static {v6}, Lcom/ayma/base/util/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
