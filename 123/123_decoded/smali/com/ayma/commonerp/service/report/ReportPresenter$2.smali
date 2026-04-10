.class Lcom/ayma/commonerp/service/report/ReportPresenter$2;
.super Ljava/lang/Object;
.source "ReportPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/service/report/ReportPresenter;->checkCashInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/service/report/ReportPresenter;Ljava/io/File;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$2;->this$0:Lcom/ayma/commonerp/service/report/ReportPresenter;

    iput-object p2, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/service/report/ReportPresenter$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
