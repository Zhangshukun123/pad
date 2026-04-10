.class public Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SmartSwipeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/SmartSwipeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final UNSPECIFIED_GRAVITY:I


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 392
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 392
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    .line 420
    iput p3, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 395
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    .line 397
    sget-object v1, Lcom/billy/android/swipe/R$styleable;->SmartSwipeWrapper_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 398
    sget p2, Lcom/billy/android/swipe/R$styleable;->SmartSwipeWrapper_Layout_swipe_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    .line 399
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 392
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 392
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;)V
    .locals 1

    .line 438
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    .line 439
    iget p1, p1, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeWrapper$LayoutParams;->gravity:I

    return-void
.end method
