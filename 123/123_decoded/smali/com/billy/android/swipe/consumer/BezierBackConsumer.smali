.class public Lcom/billy/android/swipe/consumer/BezierBackConsumer;
.super Lcom/billy/android/swipe/SwipeConsumer;
.source "BezierBackConsumer.java"


# instance fields
.field protected mArrowColor:I

.field protected mArrowSize:I

.field protected mCenter:Z

.field protected mColor:I

.field protected mDrawRect:Landroid/graphics/Rect;

.field protected mLastThickness:F

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mPaintArrow:Landroid/graphics/Paint;

.field protected final mPath:Landroid/graphics/Path;

.field protected final mPathArrow:Landroid/graphics/Path;

.field protected final mPathControl:Landroid/graphics/PointF;

.field protected final mPathControl1:Landroid/graphics/PointF;

.field protected final mPathControl2:Landroid/graphics/PointF;

.field protected final mPathControl3:Landroid/graphics/PointF;

.field protected final mPathControl4:Landroid/graphics/PointF;

.field protected final mPathEnd:Landroid/graphics/PointF;

.field protected final mPathStart:Landroid/graphics/PointF;

.field protected mSize:I

.field protected mThickness:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/billy/android/swipe/SwipeConsumer;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl4:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDrawRect:Landroid/graphics/Rect;

    const v0, -0xd0d0e

    .line 39
    iput v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowColor:I

    .line 43
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    iget v2, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v2, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    int-to-float v5, v5

    iget v6, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iput v5, v3, Landroid/graphics/PointF;->y:F

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 119
    :cond_1
    iget-object v2, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iput v5, v3, Landroid/graphics/PointF;->y:F

    iput v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 118
    :cond_2
    iget-object v2, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    int-to-float v5, v5

    iget v6, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    iput v5, v2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 117
    :cond_3
    iget-object v2, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    iput v5, v2, Landroid/graphics/PointF;->x:F

    .line 123
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->getProgress()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f4ccccd    # 0.8f

    .line 124
    invoke-static {v2, v4, v5}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    .line 125
    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 127
    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    iget-object v6, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v12, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 129
    iget-object v13, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget v14, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget v15, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl4:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl4:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 130
    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    iget-object v3, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    iget v4, v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void
.end method

.method protected drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 142
    invoke-static {p4, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p4

    float-to-double v1, p4

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v1, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p4, v0

    .line 144
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, v3

    :goto_0
    div-float/2addr p3, v3

    .line 146
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_1

    return-void

    .line 158
    :cond_1
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    if-ne v1, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    int-to-float v1, v1

    sub-float p3, v1, p3

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, p3

    .line 162
    iget-object v2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 163
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move v4, v3

    move v3, v0

    goto :goto_3

    .line 149
    :cond_5
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    if-ne v1, v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_2

    .line 150
    :cond_7
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    int-to-float v1, v1

    sub-float p3, v1, p3

    .line 151
    :goto_2
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float v2, p3, v0

    .line 153
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 154
    iget-object v3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move v4, v2

    move v7, v1

    move v1, p3

    move p3, v7

    .line 168
    :goto_3
    iget-object v5, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float p4, p4, v6

    float-to-int p4, p4

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 169
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 170
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    invoke-virtual {p4, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    invoke-virtual {p4, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    invoke-virtual {p3, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathArrow:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getArrowColor()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mColor:I

    return v0
.end method

.method protected getSize()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mSize:I

    return v0
.end method

.method public isCenter()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mCenter:Z

    return v0
.end method

.method public onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mSize:I

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    .line 56
    invoke-static {v1, v0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mSize:I

    .line 58
    :cond_0
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 59
    invoke-static {v1, v0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowSize:I

    .line 61
    :cond_1
    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mOpenDistance:I

    if-nez v1, :cond_2

    const/16 v1, 0x1e

    .line 62
    invoke-static {v1, v0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mOpenDistance:I

    .line 64
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V

    return-void
.end method

.method public onDisplayDistanceChanged(IIII)V
    .locals 0

    .line 101
    iget p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    and-int/lit8 p3, p3, 0x3

    if-eqz p3, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    goto :goto_0

    .line 103
    :cond_0
    iget p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    and-int/lit8 p1, p1, 0xc

    if-eqz p1, :cond_2

    .line 104
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    .line 108
    :goto_0
    iget p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    iget p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mLastThickness:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 111
    :cond_1
    iget p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mThickness:F

    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mLastThickness:F

    :cond_2
    return-void
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 9

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    .line 71
    iget p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    iget v2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 73
    :goto_1
    iget v3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez p1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 76
    :goto_4
    iget v4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mOpenDistance:I

    if-nez p2, :cond_6

    .line 77
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->isCenter()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 p2, 0x1

    .line 79
    :goto_6
    iget v5, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mSize:I

    if-eqz v2, :cond_7

    iget v6, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    goto :goto_7

    :cond_7
    iget v6, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    shr-int/2addr v5, v1

    shr-int/lit8 v6, v5, 0x2

    if-eqz v2, :cond_9

    if-eqz p1, :cond_8

    const/4 p3, 0x0

    goto :goto_8

    .line 81
    :cond_8
    iget p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    goto :goto_8

    :cond_9
    if-eqz p2, :cond_a

    iget p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    shr-int/2addr p3, v1

    :goto_8
    int-to-float p3, p3

    goto :goto_9

    :cond_a
    int-to-float v7, v5

    iget v8, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    invoke-static {p3, v7, v8}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p3

    :goto_9
    if-nez v2, :cond_c

    if-eqz v3, :cond_b

    const/4 p2, 0x0

    goto :goto_a

    .line 82
    :cond_b
    iget p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    goto :goto_a

    :cond_c
    if-eqz p2, :cond_d

    iget p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    shr-int/2addr p2, v1

    :goto_a
    int-to-float p2, p2

    goto :goto_b

    :cond_d
    int-to-float p2, v5

    iget v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {p4, p2, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p2

    .line 84
    :goto_b
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    if-eqz v2, :cond_e

    move v1, p3

    goto :goto_c

    :cond_e
    int-to-float v1, v5

    sub-float v1, p3, v1

    :goto_c
    if-eqz v2, :cond_f

    int-to-float v7, v5

    sub-float v7, p2, v7

    goto :goto_d

    :cond_f
    move v7, p2

    :goto_d
    invoke-virtual {p4, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    if-eqz v2, :cond_10

    move v1, p3

    goto :goto_e

    :cond_10
    int-to-float v1, v6

    sub-float v1, p3, v1

    :goto_e
    if-eqz v2, :cond_11

    int-to-float v7, v6

    sub-float v7, p2, v7

    goto :goto_f

    :cond_11
    move v7, p2

    :goto_f
    invoke-virtual {p4, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 86
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl:Landroid/graphics/PointF;

    invoke-virtual {p4, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 88
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    if-eqz v2, :cond_12

    move v1, p3

    goto :goto_10

    :cond_12
    int-to-float v1, v6

    add-float/2addr v1, p3

    :goto_10
    if-eqz v2, :cond_13

    int-to-float v6, v6

    add-float/2addr v6, p2

    goto :goto_11

    :cond_13
    move v6, p2

    :goto_11
    invoke-virtual {p4, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 89
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl4:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathControl3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    iget-object p4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    if-eqz v2, :cond_14

    goto :goto_12

    :cond_14
    int-to-float v1, v5

    add-float/2addr p3, v1

    :goto_12
    if-eqz v2, :cond_15

    int-to-float v1, v5

    add-float/2addr p2, v1

    :cond_15
    invoke-virtual {p4, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 92
    iget-object p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDrawRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_17

    if-eqz p1, :cond_16

    const/4 p3, 0x0

    goto :goto_13

    :cond_16
    iget p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    sub-int/2addr p3, v4

    goto :goto_13

    :cond_17
    iget-object p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    float-to-int p3, p3

    :goto_13
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 93
    iget-object p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDrawRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_18

    iget-object p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathStart:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    float-to-int v0, p3

    goto :goto_14

    :cond_18
    if-eqz v3, :cond_19

    goto :goto_14

    :cond_19
    iget p3, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    sub-int v0, p3, v4

    :goto_14
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 94
    iget-object p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDrawRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1a

    move p1, v4

    goto :goto_15

    :cond_1a
    iget p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mWidth:I

    goto :goto_15

    :cond_1b
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    :goto_15
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 95
    iget-object p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mDrawRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1c

    iget-object p2, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPathEnd:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int v4, p2

    goto :goto_16

    :cond_1c
    if-eqz v3, :cond_1d

    goto :goto_16

    :cond_1d
    iget v4, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mHeight:I

    :goto_16
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setArrowColor(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;
    .locals 1

    .line 200
    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mArrowColor:I

    .line 201
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaintArrow:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setCenter(Z)Lcom/billy/android/swipe/consumer/BezierBackConsumer;
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mCenter:Z

    return-object p0
.end method

.method public setColor(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;
    .locals 1

    .line 190
    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mColor:I

    .line 191
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSize(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;
    .locals 0

    .line 177
    iput p1, p0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->mSize:I

    return-object p0
.end method
