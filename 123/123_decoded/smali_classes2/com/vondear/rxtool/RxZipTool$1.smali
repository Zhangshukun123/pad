.class final Lcom/vondear/rxtool/RxZipTool$1;
.super Ljava/lang/Object;
.source "RxZipTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxZipTool;->Unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isDeleteZipFile:Z

.field final synthetic val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lnet/lingala/zip4j/progress/ProgressMonitor;ZLjava/io/File;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iput-boolean p3, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$isDeleteZipFile:Z

    iput-object p4, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$zipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 764
    iget-boolean v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$isDeleteZipFile:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-void

    .line 739
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    const-wide/16 v0, 0x3e8

    .line 741
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 743
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getPercentDone()I

    move-result v0

    .line 744
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PERCENT"

    .line 745
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 746
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    .line 747
    iput v3, v2, Landroid/os/Message;->what:I

    .line 748
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 749
    iget-object v1, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 754
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    iget-boolean v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$isDeleteZipFile:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 756
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ERROR"

    .line 757
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    .line 759
    iput v3, v2, Landroid/os/Message;->what:I

    .line 760
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 761
    iget-object v1, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 762
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    iget-boolean v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$isDeleteZipFile:Z

    if-eqz v0, :cond_3

    .line 765
    :goto_0
    iget-object v0, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_3
    return-void

    .line 764
    :goto_1
    iget-boolean v1, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$isDeleteZipFile:Z

    if-eqz v1, :cond_4

    .line 765
    iget-object v1, p0, Lcom/vondear/rxtool/RxZipTool$1;->val$zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 767
    :cond_4
    throw v0
.end method
