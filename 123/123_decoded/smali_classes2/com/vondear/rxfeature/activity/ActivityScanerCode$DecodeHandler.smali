.class final Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeHandler;
.super Landroid/os/Handler;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DecodeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/vondear/rxfeature/activity/ActivityScanerCode;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeHandler;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/vondear/rxfeature/R$id;->decode:I

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$DecodeHandler;->this$0:Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Lcom/vondear/rxfeature/activity/ActivityScanerCode;->access$400(Lcom/vondear/rxfeature/activity/ActivityScanerCode;[BII)V

    goto :goto_0

    .line 501
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/vondear/rxfeature/R$id;->quit:I

    if-ne p1, v0, :cond_1

    .line 502
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
