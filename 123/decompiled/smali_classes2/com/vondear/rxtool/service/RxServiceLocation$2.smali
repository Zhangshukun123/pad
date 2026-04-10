.class Lcom/vondear/rxtool/service/RxServiceLocation$2;
.super Ljava/lang/Object;
.source "RxServiceLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/service/RxServiceLocation;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/service/RxServiceLocation;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$2;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 70
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 71
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$2;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {v0}, Lcom/vondear/rxtool/service/RxServiceLocation;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vondear/rxtool/service/RxServiceLocation$2;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v2}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$900(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    move-result-object v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vondear/rxtool/RxLocationTool;->registerLocation(Landroid/content/Context;JJLcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$802(Lcom/vondear/rxtool/service/RxServiceLocation;Z)Z

    .line 72
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$2;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v0}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$800(Lcom/vondear/rxtool/service/RxServiceLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "init success"

    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->success(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
