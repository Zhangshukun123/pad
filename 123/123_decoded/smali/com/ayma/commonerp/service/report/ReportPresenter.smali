.class public Lcom/ayma/commonerp/service/report/ReportPresenter;
.super Lcom/ayma/commonerp/base/BasePresenter;
.source "ReportPresenter.java"

# interfaces
.implements Lcom/ayma/commonerp/service/report/ReportContact$IReportPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BasePresenter<",
        "Lcom/ayma/commonerp/service/report/ReportContact$IReportView;",
        "Lcom/ayma/commonerp/service/report/ReportModel;",
        ">;",
        "Lcom/ayma/commonerp/service/report/ReportContact$IReportPresenter;"
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ayma/commonerp/service/report/ReportContact$IReportView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    .line 38
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->initHandler()V

    .line 39
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->checkCashInfo()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public checkCashInfo()V
    .locals 5

    .line 69
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/crash/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/service/report/ReportContact$IReportView;

    invoke-interface {v0}, Lcom/ayma/commonerp/service/report/ReportContact$IReportView;->stopIt()V

    return-void

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    iget-object v1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2

    return-void

    .line 84
    :cond_2
    new-instance v2, Lcom/ayma/commonerp/service/report/ReportPresenter$2;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/service/report/ReportPresenter$2;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Ljava/io/File;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 94
    array-length v1, v0

    if-nez v1, :cond_5

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    if-nez v0, :cond_4

    return-void

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    check-cast v0, Lcom/ayma/commonerp/service/report/ReportContact$IReportView;

    invoke-interface {v0}, Lcom/ayma/commonerp/service/report/ReportContact$IReportView;->stopIt()V

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 101
    aget-object v0, v0, v1

    .line 102
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->readInfoFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 107
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->uploadCashInfo(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 59
    new-instance v0, Lcom/ayma/commonerp/service/report/ReportPresenter$1;

    iget-object v1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ayma/commonerp/service/report/ReportPresenter$1;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected bridge synthetic initModel()Lcom/ayma/base/mvp/MvpBaseModel;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->initModel()Lcom/ayma/commonerp/service/report/ReportModel;

    move-result-object v0

    return-object v0
.end method

.method protected initModel()Lcom/ayma/commonerp/service/report/ReportModel;
    .locals 2

    .line 44
    new-instance v0, Lcom/ayma/commonerp/service/report/ReportModel;

    iget-object v1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/service/report/ReportModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    iput-object v1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->handler:Landroid/os/Handler;

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->view:Lcom/ayma/base/mvp/IMvpBaseView;

    return-void
.end method

.method public readInfoFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uploadCashInfo(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 139
    :try_start_0
    invoke-static {}, Lcom/ayma/commonerp/net/RetrofitFactory;->getInstance()Lcom/ayma/commonerp/net/RetrofitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ayma/commonerp/net/RetrofitFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/ayma/base/data/CrashInfoBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/data/CrashInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 144
    iget-object p2, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6c\u6362\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/ayma/base/data/CrashInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0}, Lcom/ayma/base/data/CrashInfoBean;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneModel"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Lcom/ayma/base/data/CrashInfoBean;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0}, Lcom/ayma/base/data/CrashInfoBean;->getOccurTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "occurTime"

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v0}, Lcom/ayma/base/data/CrashInfoBean;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidVersion"

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter;->model:Lcom/ayma/base/mvp/MvpBaseModel;

    check-cast v0, Lcom/ayma/commonerp/service/report/ReportModel;

    new-instance v1, Lcom/ayma/commonerp/service/report/ReportPresenter$3;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/service/report/ReportPresenter$3;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/service/report/ReportModel;->uploadCashInfo(Ljava/util/TreeMap;Lcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
