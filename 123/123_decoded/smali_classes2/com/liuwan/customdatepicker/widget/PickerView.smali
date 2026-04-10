.class public Lcom/liuwan/customdatepicker/widget/PickerView;
.super Landroid/view/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liuwan/customdatepicker/widget/PickerView$ScrollHandler;,
        Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;,
        Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_SPEED:F = 10.0f

.field private static final TEXT_ALPHA_MIN:I = 0x78

.field private static final TEXT_ALPHA_RANGE:I = 0x87


# instance fields
.field private mCanScroll:Z

.field private mCanScrollLoop:Z

.field private mCanShowAnim:Z

.field private mContext:Landroid/content/Context;

.field private mDarkColor:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHalfHeight:F

.field private mHalfTextSpacing:F

.field private mHalfWidth:F

.field private mHandler:Landroid/os/Handler;

.field private mLastTouchY:F

.field private mLightColor:I

.field private mMinTextSize:F

.field private mOnSelectListener:Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mQuarterHeight:F

.field private mScrollAnim:Landroid/animation/ObjectAnimator;

.field private mScrollDistance:F

.field private mSelectedIndex:I

.field private mTextSizeRange:F

.field private mTextSpacing:F

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScroll:Z

    .line 50
    iput-boolean p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    .line 53
    iput-boolean p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanShowAnim:Z

    .line 55
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimer:Ljava/util/Timer;

    .line 57
    new-instance p2, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollHandler;-><init>(Lcom/liuwan/customdatepicker/widget/PickerView;Lcom/liuwan/customdatepicker/widget/PickerView$1;)V

    iput-object p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->initPaint()V

    return-void
.end method

.method static synthetic access$100(Lcom/liuwan/customdatepicker/widget/PickerView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->keepScrolling()V

    return-void
.end method

.method private cancelTimerTask()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimerTask:Ljava/util/TimerTask;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;IFLjava/lang/String;)V
    .locals 5

    .line 163
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mQuarterHeight:F

    div-float v1, p3, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mMinTextSize:F

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSizeRange:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43070000    # 135.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x78

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 173
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfHeight:F

    add-float/2addr v0, p3

    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    sub-float/2addr v0, p3

    .line 174
    iget p2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfWidth:F

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 120
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/liuwan/customdatepicker/R$color;->date_picker_text_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLightColor:I

    .line 121
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/liuwan/customdatepicker/R$color;->date_picker_text_dark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDarkColor:I

    return-void
.end method

.method private keepScrolling()V
    .locals 3

    .line 267
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 268
    iput v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    .line 269
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->cancelTimerTask()V

    .line 272
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mOnSelectListener:Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mOnSelectListener:Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;->onSelect(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v2

    .line 278
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    goto :goto_0

    :cond_1
    add-float/2addr v0, v2

    .line 281
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    .line 283
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScroll:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mOnSelectListener:Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;

    .line 374
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 375
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->cancelTimerTask()V

    .line 379
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 381
    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLightColor:I

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/liuwan/customdatepicker/widget/PickerView;->drawText(Landroid/graphics/Canvas;IFLjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 149
    :goto_0
    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    if-gt v1, v2, :cond_1

    .line 150
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDarkColor:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    int-to-float v5, v1

    iget v6, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSpacing:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    sub-int/2addr v2, v1

    .line 151
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/liuwan/customdatepicker/widget/PickerView;->drawText(Landroid/graphics/Canvas;IFLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    sub-int/2addr v1, v2

    :goto_1
    if-ge v0, v1, :cond_2

    .line 157
    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDarkColor:I

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    int-to-float v4, v0

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSpacing:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/2addr v5, v0

    .line 158
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/liuwan/customdatepicker/widget/PickerView;->drawText(Landroid/graphics/Canvas;IFLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfWidth:F

    .line 129
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v0, p1, p2

    .line 130
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfHeight:F

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p1, v0

    .line 131
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mQuarterHeight:F

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p1, v0

    const v0, 0x400ccccd    # 2.2f

    div-float v0, p1, v0

    .line 133
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mMinTextSize:F

    sub-float/2addr p1, v0

    .line 134
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSizeRange:F

    const p1, 0x40333333    # 2.8f

    mul-float v0, v0, p1

    .line 135
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSpacing:F

    div-float/2addr v0, p2

    .line 136
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfTextSpacing:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 192
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLastTouchY:F

    sub-float v2, p1, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    .line 193
    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHalfTextSpacing:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 194
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    if-nez v0, :cond_2

    .line 195
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    if-nez v0, :cond_1

    .line 196
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLastTouchY:F

    .line 197
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    goto/16 :goto_3

    :cond_1
    sub-int/2addr v0, v1

    .line 200
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->moveTailToHead()V

    .line 206
    :goto_0
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSpacing:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    goto :goto_2

    :cond_3
    neg-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 208
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    if-nez v0, :cond_5

    .line 209
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_4

    .line 210
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLastTouchY:F

    .line 211
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    goto :goto_3

    .line 214
    :cond_4
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    goto :goto_1

    .line 218
    :cond_5
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->moveHeadToTail()V

    .line 220
    :goto_1
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTextSpacing:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    .line 222
    :cond_6
    :goto_2
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLastTouchY:F

    .line 223
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    goto :goto_3

    .line 228
    :cond_7
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v2, v4

    if-gez p1, :cond_8

    const/4 p1, 0x0

    .line 229
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollDistance:F

    goto :goto_3

    .line 232
    :cond_8
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->cancelTimerTask()V

    .line 233
    new-instance v3, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;

    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lcom/liuwan/customdatepicker/widget/PickerView$ScrollTimerTask;-><init>(Landroid/os/Handler;Lcom/liuwan/customdatepicker/widget/PickerView$1;)V

    iput-object v3, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimerTask:Ljava/util/TimerTask;

    .line 234
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_3

    .line 186
    :cond_9
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->cancelTimerTask()V

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mLastTouchY:F

    :goto_3
    return v1
.end method

.method public setCanScroll(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScroll:Z

    return-void
.end method

.method public setCanScrollLoop(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    return-void
.end method

.method public setCanShowAnim(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanShowAnim:Z

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 290
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    const/4 p1, 0x0

    .line 294
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    .line 295
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mOnSelectListener:Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;

    return-void
.end method

.method public setSelected(I)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 304
    :cond_0
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    .line 305
    iget-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanScrollLoop:Z

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :goto_0
    neg-int v1, p1

    if-ge v0, v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->moveHeadToTail()V

    .line 311
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    :goto_1
    if-ge v0, p1, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->moveTailToHead()V

    .line 316
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->invalidate()V

    return-void
.end method

.method public startAnim()V
    .locals 5

    .line 348
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mCanShowAnim:Z

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 351
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 352
    fill-array-data v2, :array_1

    const-string v3, "scaleX"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 353
    fill-array-data v3, :array_2

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 354
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/PickerView;->mScrollAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
