.class public Lcom/billy/android/swipe/internal/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# static fields
.field public static MAX_PROGRESS:F = 1.0f

.field public static MIN_PROGRESS:F


# instance fields
.field private mBaseAlpha:I

.field private mBounds:Landroid/graphics/Rect;

.field private mDirection:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mScrimColor:I

.field private mShadowColor:I

.field private mShadowDirection:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRect:Landroid/graphics/Rect;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 21
    iput p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowRect:Landroid/graphics/Rect;

    const/high16 p1, -0x80000000

    .line 31
    iput p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 41
    iget-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getShadowColor()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 53
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mScrimColor:I

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mDirection:I

    and-int/lit8 v0, v0, 0xf

    if-lez v0, :cond_3

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 64
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 47
    iget-object p3, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 48
    iget-object p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBounds:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setDirection(IIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 82
    iput v1, v0, Lcom/billy/android/swipe/internal/ScrimView;->mDirection:I

    .line 83
    iput v2, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    .line 84
    iput v3, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowDirection:I

    move/from16 v4, p4

    .line 85
    iput v4, v0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_1

    const/16 v7, 0x8

    if-eq v3, v7, :cond_1

    return-void

    .line 93
    :cond_1
    iget v3, v0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    move v7, v3

    const/4 v8, 0x0

    move/from16 v3, p5

    goto :goto_0

    .line 92
    :cond_2
    iget v3, v0, Lcom/billy/android/swipe/internal/ScrimView;->mSize:I

    move/from16 v7, p6

    move v8, v7

    .line 95
    :goto_0
    iget-object v9, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowRect:Landroid/graphics/Rect;

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 96
    iget-object v9, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowRect:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget v9, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    ushr-int/lit8 v9, v9, 0x18

    const/16 v10, 0x1e

    const/16 v11, 0x1f

    new-array v15, v11, [F

    new-array v11, v11, [I

    .line 101
    iget v12, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowDirection:I

    if-eq v12, v6, :cond_4

    if-ne v12, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-gt v12, v10, :cond_5

    int-to-float v13, v12

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v13, v13, v14

    int-to-float v14, v10

    div-float/2addr v13, v14

    .line 103
    aput v13, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_4
    if-gt v12, v10, :cond_7

    if-eqz v2, :cond_6

    rsub-int/lit8 v13, v12, 0x1e

    goto :goto_5

    :cond_6
    move v13, v12

    .line 107
    :goto_5
    aget v13, v15, v13

    int-to-float v14, v9

    mul-float v14, v14, v13

    mul-float v14, v14, v13

    float-to-int v13, v14

    shl-int/lit8 v13, v13, 0x18

    .line 108
    iget v14, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowColor:I

    const v16, 0xffffff

    and-int v14, v14, v16

    or-int/2addr v13, v14

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    if-eq v1, v6, :cond_9

    if-ne v1, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :cond_9
    :goto_6
    if-eqz v6, :cond_a

    shr-int/lit8 v7, v7, 0x1

    move v8, v7

    goto :goto_7

    :cond_a
    shr-int/lit8 v5, v3, 0x1

    move v3, v5

    .line 118
    :goto_7
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v13, v5

    int-to-float v14, v8

    int-to-float v2, v3

    int-to-float v3, v7

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v1

    move-object v4, v15

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 119
    iget-object v2, v0, Lcom/billy/android/swipe/internal/ScrimView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 70
    sget v0, Lcom/billy/android/swipe/internal/ScrimView;->MIN_PROGRESS:F

    sget v1, Lcom/billy/android/swipe/internal/ScrimView;->MAX_PROGRESS:F

    invoke-static {p1, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p1

    .line 71
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBaseAlpha:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    .line 72
    iget v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mScrimColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 73
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 1

    .line 77
    iput p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mScrimColor:I

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x18

    .line 78
    iput p1, p0, Lcom/billy/android/swipe/internal/ScrimView;->mBaseAlpha:I

    return-void
.end method
