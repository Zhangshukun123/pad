.class public Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;
.super Landroid/os/Handler;
.source "NoticeToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/widget/NoticeToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafelyHandlerWarpper"
.end annotation


# instance fields
.field private impl:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;->impl:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 129
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;->impl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
