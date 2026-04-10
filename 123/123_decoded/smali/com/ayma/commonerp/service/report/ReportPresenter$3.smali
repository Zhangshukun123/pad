.class Lcom/ayma/commonerp/service/report/ReportPresenter$3;
.super Ljava/lang/Object;
.source "ReportPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/report/ReportPresenter;->uploadCashInfo(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

.field final synthetic val$cashFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Ljava/io/File;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->val$cashFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 3

    .line 181
    iget-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/service/report/ReportPresenter$3$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/service/report/ReportPresenter$3$3;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter$3;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->requestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestSuccess()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->val$cashFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/service/report/ReportPresenter$3$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/service/report/ReportPresenter$3$1;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/service/report/ReportPresenter;->access$000(Lcom/ayma/commonerp/service/report/ReportPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/service/report/ReportPresenter$3$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/service/report/ReportPresenter$3$2;-><init>(Lcom/ayma/commonerp/service/report/ReportPresenter$3;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
