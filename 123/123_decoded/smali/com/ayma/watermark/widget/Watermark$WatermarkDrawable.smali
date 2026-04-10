.class public Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Watermark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/watermark/widget/Watermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkDrawable"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:F

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 243
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ayma/watermark/widget/Watermark$1;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;I)I
    .locals 0

    .line 224
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F
    .locals 0

    .line 224
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mTextSize:F

    return p1
.end method

.method static synthetic access$402(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F
    .locals 0

    .line 224
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mRotation:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 251
    invoke-virtual {p0}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 252
    invoke-virtual {p0}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int v2, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v2, v1

    int-to-double v1, v2

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 254
    iget-object v2, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v2, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mTextSize:F

    invoke-static {v3}, Lcom/ayma/watermark/util/ConvertUtils;->spToPx(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    iget-object v2, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v2, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 258
    iget-object v2, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 260
    iget v4, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mRotation:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 265
    div-int/lit8 v4, v1, 0xa

    move v5, v4

    :goto_0
    if-gt v5, v1, :cond_1

    neg-int v6, v0

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0x1

    .line 266
    rem-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v2

    :goto_1
    add-float/2addr v6, v3

    int-to-float v3, v0

    cmpg-float v3, v6, v3

    if-gez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mText:Ljava/lang/String;

    int-to-float v8, v5

    iget-object v9, p0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v2

    goto :goto_1

    :cond_0
    add-int/2addr v5, v4

    move v3, v7

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
