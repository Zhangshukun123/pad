.class Lcom/ayma/commonerp/service/report/ReportPresenter$3$1;
.super Ljava/lang/Object;
.source "ReportPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/report/ReportPresenter$3;->requestSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/service/report/ReportPresenter$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/report/ReportPresenter$3;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3$1;->this$1:Lcom/ayma/commonerp/service/report/ReportPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$3$1;->this$1:Lcom/ayma/commonerp/service/report/ReportPresenter$3;

    iget-object v0, v0, Lcom/ayma/commonerp/service/report/ReportPresenter$3;->val$cashFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
