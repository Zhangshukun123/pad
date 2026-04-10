.class final Lcom/yzq/zxinglibrary/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yzq/zxinglibrary/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/yzq/zxinglibrary/camera/AutoFocusManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/yzq/zxinglibrary/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yzq/zxinglibrary/camera/AutoFocusManager;Lcom/yzq/zxinglibrary/camera/AutoFocusManager$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/yzq/zxinglibrary/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/yzq/zxinglibrary/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 123
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    iget-object p1, p0, Lcom/yzq/zxinglibrary/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/yzq/zxinglibrary/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/camera/AutoFocusManager;->start()V

    const/4 p1, 0x0

    return-object p1
.end method
