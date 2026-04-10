.class Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;
.super Ljava/util/TimerTask;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liuwan/customdatepicker/widget/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollTimerTask"
.end annotation


# instance fields
.field private mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/liuwan/customdatepicker/widget/PickerView$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
