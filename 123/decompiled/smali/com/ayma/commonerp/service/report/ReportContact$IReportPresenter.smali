.class public interface abstract Lcom/ayma/commonerp/service/report/ReportContact$IReportPresenter;
.super Ljava/lang/Object;
.source "ReportContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/service/report/ReportContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReportPresenter"
.end annotation


# virtual methods
.method public abstract checkCashInfo()V
.end method

.method public abstract initHandler()V
.end method

.method public abstract readInfoFromFile(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract uploadCashInfo(Ljava/lang/String;Ljava/io/File;)V
.end method
