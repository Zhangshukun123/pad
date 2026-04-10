.class public Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;
.super Landroid/os/Handler;
.source "ToastCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/appupdater/widget/ToastCompat;
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

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;->impl:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 54
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;->impl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
