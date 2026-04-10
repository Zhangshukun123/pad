.class public interface abstract Lcom/ayma/commonerp/util/DownloadUtil$DownloadListener;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/util/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onStart()V
.end method
