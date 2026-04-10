.class Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;
.super Ljava/lang/Object;
.source "ShuttersConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/consumer/ShuttersConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotCreateRunnable"
.end annotation


# instance fields
.field array:[Landroid/graphics/Bitmap;

.field height:I

.field index:I

.field latch:Ljava/util/concurrent/CountDownLatch;

.field scrollX:I

.field scrollY:I

.field srcView:Landroid/view/View;

.field final synthetic this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

.field width:I


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;III[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Landroid/view/View;II)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->width:I

    .line 105
    iput p3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->height:I

    .line 106
    iput p4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->index:I

    .line 107
    iput-object p5, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->array:[Landroid/graphics/Bitmap;

    .line 108
    iput-object p6, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 109
    iput-object p7, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    .line 110
    iput p8, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->scrollX:I

    .line 111
    iput p9, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->scrollY:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->array:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->width:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->height:I

    if-eq v2, v3, :cond_1

    .line 119
    :cond_0
    iget v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->width:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->scrollX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->scrollY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v2, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->array:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->index:I

    aput-object v1, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->srcView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 139
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_4

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    return-void

    :catchall_1
    move-exception v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$ScreenshotCreateRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    :cond_5
    throw v1
.end method
