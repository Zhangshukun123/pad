.class Lcom/vondear/rxtool/RxCrashTool$1$1;
.super Ljava/lang/Object;
.source "RxCrashTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxCrashTool$1;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/RxCrashTool$1;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$fullPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/RxCrashTool$1;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->this$0:Lcom/vondear/rxtool/RxCrashTool$1;

    iput-object p2, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->val$fullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 80
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->val$fullPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-static {}, Lcom/vondear/rxtool/RxCrashTool;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 83
    iget-object v0, p0, Lcom/vondear/rxtool/RxCrashTool$1$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 89
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 94
    :cond_2
    throw v0
.end method
