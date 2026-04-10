.class Lcom/ayma/base/util/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/base/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/base/util/CrashHandler;


# direct methods
.method constructor <init>(Lcom/ayma/base/util/CrashHandler;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/ayma/base/util/CrashHandler$1;->this$0:Lcom/ayma/base/util/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 128
    new-instance v0, Lcom/ayma/base/util/ToastCompat;

    invoke-direct {v0}, Lcom/ayma/base/util/ToastCompat;-><init>()V

    iget-object v1, p0, Lcom/ayma/base/util/CrashHandler$1;->this$0:Lcom/ayma/base/util/CrashHandler;

    invoke-static {v1}, Lcom/ayma/base/util/CrashHandler;->access$200(Lcom/ayma/base/util/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38\u9000\u51fa"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ayma/base/util/ToastCompat;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 129
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
