.class public Lcom/vondear/rxtool/RxTextTool$Builder;
.super Ljava/lang/Object;
.source "RxTextTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxTextTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private align:Landroid/text/Layout$Alignment;

.field private backgroundColor:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private bulletColor:I

.field private clickSpan:Landroid/text/style/ClickableSpan;

.field private defaultValue:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private first:I

.field private flag:I

.field private fontFamily:Ljava/lang/String;

.field private foregroundColor:I

.field private gapWidth:I

.field private imageIsBitmap:Z

.field private imageIsDrawable:Z

.field private imageIsResourceId:Z

.field private imageIsUri:Z

.field private isBlur:Z

.field private isBold:Z

.field private isBoldItalic:Z

.field private isBullet:Z

.field private isItalic:Z

.field private isLeadingMargin:Z

.field private isStrikethrough:Z

.field private isSubscript:Z

.field private isSuperscript:Z

.field private isUnderline:Z

.field private mBuilder:Landroid/text/SpannableStringBuilder;

.field private proportion:F

.field private quoteColor:I

.field private radius:F

.field private resourceId:I

.field private rest:I

.field private style:Landroid/graphics/BlurMaskFilter$Blur;

.field private text:Ljava/lang/CharSequence;

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;

.field private xProportion:F


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x12000000

    .line 57
    iput v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    .line 109
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->text:Ljava/lang/CharSequence;

    const/16 p1, 0x21

    .line 110
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    .line 111
    iput v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->foregroundColor:I

    .line 112
    iput v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->backgroundColor:I

    .line 113
    iput v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->quoteColor:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 114
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->proportion:F

    .line 115
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->xProportion:F

    .line 116
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/vondear/rxtool/RxTextTool$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/vondear/rxtool/RxTextTool$Builder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSpan()V
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    iget-object v1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 449
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->foregroundColor:I

    iget v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    if-eq v2, v3, :cond_0

    .line 450
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->foregroundColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 451
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    iput v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->foregroundColor:I

    .line 453
    :cond_0
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->backgroundColor:I

    iget v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    if-eq v2, v3, :cond_1

    .line 454
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->backgroundColor:I

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 455
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    iput v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->backgroundColor:I

    .line 457
    :cond_1
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isLeadingMargin:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 458
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/LeadingMarginSpan$Standard;

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->first:I

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->rest:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 459
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isLeadingMargin:Z

    .line 461
    :cond_2
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->quoteColor:I

    iget v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    if-eq v2, v4, :cond_3

    .line 462
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/QuoteSpan;

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->quoteColor:I

    invoke-direct {v4, v5}, Landroid/text/style/QuoteSpan;-><init>(I)V

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 463
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->defaultValue:I

    iput v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->quoteColor:I

    .line 465
    :cond_3
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBullet:Z

    if-eqz v2, :cond_4

    .line 466
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/BulletSpan;

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->gapWidth:I

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->bulletColor:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/BulletSpan;-><init>(II)V

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 467
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBullet:Z

    .line 469
    :cond_4
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->proportion:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    .line 470
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->proportion:F

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    iput v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->proportion:F

    .line 473
    :cond_5
    iget v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->xProportion:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    .line 474
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ScaleXSpan;

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->xProportion:F

    invoke-direct {v5, v6}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 475
    iput v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->xProportion:F

    .line 477
    :cond_6
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isStrikethrough:Z

    if-eqz v2, :cond_7

    .line 478
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 479
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isStrikethrough:Z

    .line 481
    :cond_7
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isUnderline:Z

    if-eqz v2, :cond_8

    .line 482
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 483
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isUnderline:Z

    .line 485
    :cond_8
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSuperscript:Z

    if-eqz v2, :cond_9

    .line 486
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 487
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSuperscript:Z

    .line 489
    :cond_9
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSubscript:Z

    if-eqz v2, :cond_a

    .line 490
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/SubscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SubscriptSpan;-><init>()V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 491
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSubscript:Z

    .line 493
    :cond_a
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBold:Z

    if-eqz v2, :cond_b

    .line 494
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 495
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBold:Z

    .line 497
    :cond_b
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isItalic:Z

    if-eqz v2, :cond_c

    .line 498
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 499
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isItalic:Z

    .line 501
    :cond_c
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBoldItalic:Z

    if-eqz v2, :cond_d

    .line 502
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 503
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBoldItalic:Z

    .line 505
    :cond_d
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->fontFamily:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    .line 506
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/TypefaceSpan;

    iget-object v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->fontFamily:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 507
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->fontFamily:Ljava/lang/String;

    .line 509
    :cond_e
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->align:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_f

    .line 510
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->align:Landroid/text/Layout$Alignment;

    invoke-direct {v5, v6}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 511
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->align:Landroid/text/Layout$Alignment;

    .line 513
    :cond_f
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsBitmap:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsDrawable:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsUri:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsResourceId:Z

    if-eqz v2, :cond_14

    .line 514
    :cond_10
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsBitmap:Z

    if-eqz v2, :cond_11

    .line 515
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 516
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 517
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsBitmap:Z

    goto :goto_0

    .line 518
    :cond_11
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsDrawable:Z

    if-eqz v2, :cond_12

    .line 519
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    iget-object v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 520
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 521
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsDrawable:Z

    goto :goto_0

    .line 522
    :cond_12
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsUri:Z

    if-eqz v2, :cond_13

    .line 523
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 524
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->uri:Landroid/net/Uri;

    .line 525
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsUri:Z

    goto :goto_0

    .line 527
    :cond_13
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->resourceId:I

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 528
    iput v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->resourceId:I

    .line 529
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsResourceId:Z

    .line 532
    :cond_14
    :goto_0
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_15

    .line 533
    iget-object v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v5, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 534
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    .line 536
    :cond_15
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->url:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 537
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/URLSpan;

    iget-object v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 538
    iput-object v4, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->url:Ljava/lang/String;

    .line 540
    :cond_16
    iget-boolean v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBlur:Z

    if-eqz v2, :cond_17

    .line 541
    iget-object v2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/MaskFilterSpan;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    iget v6, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->radius:F

    iget-object v7, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->style:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-direct {v4, v5}, Landroid/text/style/MaskFilterSpan;-><init>(Landroid/graphics/MaskFilter;)V

    iget v5, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 542
    iput-boolean v3, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBlur:Z

    :cond_17
    const/16 v0, 0x21

    .line 544
    iput v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/vondear/rxtool/RxTextTool$Builder;->setSpan()V

    .line 421
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public create()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 431
    invoke-direct {p0}, Lcom/vondear/rxtool/RxTextTool$Builder;->setSpan()V

    .line 432
    iget-object v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public into(Landroid/widget/TextView;)V
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/vondear/rxtool/RxTextTool$Builder;->setSpan()V

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setAlign(Landroid/text/Layout$Alignment;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->align:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 153
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->backgroundColor:I

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsBitmap:Z

    return-object p0
.end method

.method public setBlur(FLandroid/graphics/BlurMaskFilter$Blur;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 407
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->radius:F

    .line 408
    iput-object p2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->style:Landroid/graphics/BlurMaskFilter$Blur;

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBlur:Z

    return-object p0
.end method

.method public setBold()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBold:Z

    return-object p0
.end method

.method public setBoldItalic()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBoldItalic:Z

    return-object p0
.end method

.method public setBullet(II)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 190
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->gapWidth:I

    .line 191
    iput p2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->bulletColor:I

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isBullet:Z

    return-object p0
.end method

.method public setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsDrawable:Z

    return-object p0
.end method

.method public setFlag(I)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->flag:I

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setForegroundColor(I)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 142
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->foregroundColor:I

    return-object p0
.end method

.method public setItalic()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isItalic:Z

    return-object p0
.end method

.method public setLeadingMargin(II)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 176
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->first:I

    .line 177
    iput p2, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->rest:I

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isLeadingMargin:Z

    return-object p0
.end method

.method public setProportion(F)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 203
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->proportion:F

    return-object p0
.end method

.method public setQuoteColor(I)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 164
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->quoteColor:I

    return-object p0
.end method

.method public setResourceId(I)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 363
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->resourceId:I

    const/4 p1, 0x1

    .line 364
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsResourceId:Z

    return-object p0
.end method

.method public setStrikethrough()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isStrikethrough:Z

    return-object p0
.end method

.method public setSubscript()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSubscript:Z

    return-object p0
.end method

.method public setSuperscript()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isSuperscript:Z

    return-object p0
.end method

.method public setUnderline()Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->isUnderline:Z

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->uri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->imageIsUri:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setXProportion(F)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 0

    .line 214
    iput p1, p0, Lcom/vondear/rxtool/RxTextTool$Builder;->xProportion:F

    return-object p0
.end method
