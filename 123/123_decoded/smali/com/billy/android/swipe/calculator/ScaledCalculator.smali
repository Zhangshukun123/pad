.class public Lcom/billy/android/swipe/calculator/ScaledCalculator;
.super Ljava/lang/Object;
.source "ScaledCalculator.java"

# interfaces
.implements Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;


# instance fields
.field private mScale:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 18
    iput p1, p0, Lcom/billy/android/swipe/calculator/ScaledCalculator;->mScale:F

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scale must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calculateSwipeDistance(IF)I
    .locals 0

    int-to-float p1, p1

    .line 23
    iget p2, p0, Lcom/billy/android/swipe/calculator/ScaledCalculator;->mScale:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public calculateSwipeOpenDistance(I)I
    .locals 1

    int-to-float p1, p1

    .line 28
    iget v0, p0, Lcom/billy/android/swipe/calculator/ScaledCalculator;->mScale:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
