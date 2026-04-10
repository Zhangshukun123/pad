.class Lcom/ayma/commonerp/service/report/ReportPresenter$1;
.super Landroid/os/Handler;
.source "ReportPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/report/ReportPresenter;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$1;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
