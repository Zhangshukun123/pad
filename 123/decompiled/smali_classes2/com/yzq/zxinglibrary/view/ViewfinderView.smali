.class public final Lcom/yzq/zxinglibrary/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6


# instance fields
.field private cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

.field private config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

.field private frame:Landroid/graphics/Rect;

.field private frameLineColor:I

.field private frameLinePaint:Landroid/graphics/Paint;

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private reactColor:I

.field private reactPaint:Landroid/graphics/Paint;

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultColor:I

.field private resultPointColor:I

.field private scanLineColor:I

.field private scanLinePaint:Landroid/graphics/Paint;

.field private scanLineTop:I

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLineColor:I

    .line 86
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yzq/zxinglibrary/R$color;->viewfinder_mask:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->maskColor:I

    .line 87
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yzq/zxinglibrary/R$color;->result_view:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultColor:I

    .line 88
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yzq/zxinglibrary/R$color;->possible_result_points:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultPointColor:I

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/yzq/zxinglibrary/view/ViewfinderView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLineTop:I

    return p1
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 359
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 275
    iget v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLineColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 281
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    const/16 v1, 0xf

    .line 290
    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 295
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 302
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v4, v2

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawMaskView(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 253
    iget-object v2, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    int-to-float v2, v2

    .line 255
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    iget-object v9, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 257
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    iget-object v15, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    iget-object v12, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 262
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v11, v1

    iget-object v12, v0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPoint(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    .line 205
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 206
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    .line 209
    iget-object p3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 210
    iget-object v2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 211
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 212
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 213
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p3, 0x0

    .line 214
    iput-object p3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_1

    .line 216
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 217
    iput-object p3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 218
    iget-object v5, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    iget-object v5, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    monitor-enter p3

    .line 221
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPoint;

    .line 223
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    mul-float v7, v7, v0

    float-to-int v7, v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    .line 224
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v8, 0x40c00000    # 6.0f

    iget-object v9, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 222
    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    if-eqz v2, :cond_3

    .line 230
    iget-object p3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v5, 0x50

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    iget-object p3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    monitor-enter v2

    const/high16 p3, 0x40400000    # 3.0f

    .line 234
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPoint;

    .line 236
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    mul-float v7, v7, v0

    float-to-int v7, v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    .line 237
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v8, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 235
    invoke-virtual {p1, v7, v6, p3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 239
    :cond_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_3
    const-wide/16 v4, 0x50

    .line 245
    iget p1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, p1, -0x6

    iget p1, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, p1, -0x6

    iget p1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, p1, 0x6

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, p1, 0x6

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    return-void

    :catchall_1
    move-exception p1

    .line 227
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 320
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLineTop:I

    int-to-float v3, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    iget p2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLineTop:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initAnimator()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xbb8

    .line 129
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 132
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 133
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yzq/zxinglibrary/view/ViewfinderView$1;

    invoke-direct {v1, p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView$1;-><init>(Lcom/yzq/zxinglibrary/view/ViewfinderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    .line 101
    iget v2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLineColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLinePaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-virtual {v3}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->getFrameLineColor()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    .line 118
    invoke-direct {p0, v2}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 121
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 347
    monitor-enter v0

    .line 348
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0xa

    .line 352
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 354
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 342
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 327
    iput-object v1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    .line 174
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    invoke-virtual {v0}, Lcom/yzq/zxinglibrary/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->initAnimator()V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->drawMaskView(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 187
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 189
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCameraManager(Lcom/yzq/zxinglibrary/camera/CameraManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->cameraManager:Lcom/yzq/zxinglibrary/camera/CameraManager;

    return-void
.end method

.method public setZxingConfig(Lcom/yzq/zxinglibrary/bean/ZxingConfig;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->config:Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    .line 71
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->getReactColor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->reactColor:I

    .line 73
    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->getFrameLineColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->getFrameLineColor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->frameLineColor:I

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->getScanLineColor()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->scanLineColor:I

    .line 78
    invoke-direct {p0}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->initPaint()V

    return-void
.end method

.method public stopAnimator()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 158
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderView;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
