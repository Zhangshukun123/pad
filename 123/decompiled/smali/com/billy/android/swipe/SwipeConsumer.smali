.class public abstract Lcom/billy/android/swipe/SwipeConsumer;
.super Ljava/lang/Object;
.source "SwipeConsumer.java"


# static fields
.field public static DEFAULT_OPEN_DISTANCE_IN_DP:I = 0x96

.field public static final DIRECTION_ALL:I = 0xf

.field public static final DIRECTION_BOTTOM:I = 0x8

.field public static final DIRECTION_HORIZONTAL:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_TOP:I = 0x4

.field public static final DIRECTION_VERTICAL:I = 0xc

.field public static final PROGRESS_CLOSE:F = 0.0f

.field public static final PROGRESS_OPEN:F = 1.0f

.field public static final RELEASE_MODE_AUTO_CLOSE:I = 0x1

.field public static final RELEASE_MODE_AUTO_OPEN:I = 0x2

.field public static final RELEASE_MODE_AUTO_OPEN_CLOSE:I = 0x3

.field public static final RELEASE_MODE_HOLE_OPEN:I = 0x4

.field public static final RELEASE_MODE_NONE:I


# instance fields
.field protected mCachedSwipeDistanceX:I

.field protected mCachedSwipeDistanceY:I

.field protected mCurDisplayDistanceX:I

.field protected mCurDisplayDistanceY:I

.field protected mCurSwipeDistanceX:I

.field protected mCurSwipeDistanceY:I

.field protected mDirection:I

.field protected mDisableSwipeOnSettling:Z

.field protected mEdgeSize:I

.field private mEnableDirection:I

.field protected mEnableNested:I

.field protected mHeight:I

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/billy/android/swipe/listener/SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDirection:I

.field protected mMaxSettleDuration:Ljava/lang/Integer;

.field protected mOpenDistance:I

.field protected mOpenDistanceSpecified:Z

.field protected mOverSwipeFactor:F

.field protected mProgress:F

.field protected mReleaseMode:I

.field private mSensitivity:F

.field protected mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

.field protected mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

.field protected mSwipeMaxDistance:I

.field protected mSwipeOpenDistance:I

.field protected volatile mSwiping:Z

.field protected mTag:Ljava/lang/Object;

.field protected mWidth:I

.field protected mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    .line 95
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSensitivity:F

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mReleaseMode:I

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOverSwipeFactor:F

    const/16 v0, 0xff

    .line 115
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    return-void
.end method

.method private enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    if-eqz p2, :cond_0

    .line 1286
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    goto :goto_0

    .line 1288
    :cond_0
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    shl-int/lit8 p1, p1, 0x4

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    :goto_0
    return-object p0
.end method

.method private enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    if-eqz p2, :cond_0

    .line 1251
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    goto :goto_0

    .line 1253
    :cond_0
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    if-eqz p1, :cond_0

    .line 807
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {p1, v0, p0}, Lcom/billy/android/swipe/listener/SwipeListener;->onConsumerAttachedToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;)V

    :cond_0
    return-object p0
.end method

.method public addToExclusiveGroup(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p1, p0}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->add(Lcom/billy/android/swipe/SwipeConsumer;)V

    :cond_0
    return-object p0
.end method

.method public as(Ljava/lang/Class;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    return-object p0
.end method

.method public calSwipeDirection(IFFFF)I
    .locals 14

    move-object v8, p0

    move v9, p1

    .line 148
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/4 v10, -0x3

    const/4 v1, 0x4

    const/4 v11, 0x0

    if-nez v0, :cond_2

    const/4 v0, -0x2

    if-ne v9, v0, :cond_0

    .line 149
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    :cond_0
    if-ne v9, v10, :cond_2

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_2

    :cond_1
    return v11

    .line 155
    :cond_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 156
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 157
    iget v3, v8, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    const/4 v4, 0x0

    if-nez v3, :cond_18

    iget v3, v8, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v12, 0x1

    cmpl-float v6, v0, v4

    if-nez v6, :cond_8

    cmpl-float v6, v2, v4

    if-nez v6, :cond_8

    .line 174
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    if-lez v0, :cond_7

    .line 175
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isRightEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mWidth:I

    iget v2, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_3

    .line 181
    :cond_5
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isTopEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_6

    goto/16 :goto_3

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mHeight:I

    iget v1, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_7

    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_7
    const/4 v1, 0x0

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_8
    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    cmpl-float v0, p4, v4

    if-lez v0, :cond_9

    .line 191
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_0

    :cond_9
    cmpg-float v0, p4, v4

    if-gez v0, :cond_c

    .line 194
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isRightEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/4 v13, 0x2

    goto :goto_0

    :cond_a
    cmpl-float v0, p5, v4

    if-lez v0, :cond_b

    .line 199
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isTopEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/4 v13, 0x4

    goto :goto_0

    :cond_b
    cmpg-float v0, p5, v4

    if-gez v0, :cond_c

    .line 202
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v13, 0x8

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v0, :cond_13

    .line 208
    iget v2, v8, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    if-lez v2, :cond_12

    if-eq v13, v12, :cond_11

    if-eq v13, v3, :cond_10

    if-eq v13, v1, :cond_f

    if-eq v13, v5, :cond_d

    goto :goto_1

    .line 214
    :cond_d
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_e

    goto :goto_2

    :cond_e
    const/4 v12, 0x0

    goto :goto_2

    :cond_f
    int-to-float v0, v2

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_e

    goto :goto_2

    .line 212
    :cond_10
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_e

    goto :goto_2

    :cond_11
    int-to-float v0, v2

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_e

    goto :goto_2

    .line 220
    :cond_12
    iget-object v1, v8, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-object v0, p0

    move v2, v13

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/billy/android/swipe/SwipeConsumer;->canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z

    move-result v0

    xor-int/2addr v12, v0

    goto :goto_2

    :cond_13
    :goto_1
    move v12, v0

    :goto_2
    move v1, v13

    :goto_3
    if-eqz v12, :cond_17

    if-ne v9, v10, :cond_14

    .line 226
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedFlyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 229
    :cond_14
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionLocked(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return v11

    .line 232
    :cond_15
    invoke-virtual {p0, p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedAndDisabled(II)Z

    move-result v0

    if-eqz v0, :cond_16

    return v11

    :cond_16
    return v1

    :cond_17
    return v11

    :cond_18
    :goto_4
    cmpl-float v1, p4, v4

    if-nez v1, :cond_19

    cmpl-float v1, p5, v4

    if-nez v1, :cond_19

    return v11

    .line 162
    :cond_19
    iget v1, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_1a

    cmpl-float v1, v0, v2

    if-gtz v1, :cond_1b

    :cond_1a
    iget v1, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 v1, v1, 0xc

    if-lez v1, :cond_1d

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1d

    .line 163
    :cond_1b
    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionLocked(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, p1, v0}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedAndDisabled(II)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 165
    iget-object v1, v8, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v2, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    move-object v0, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/billy/android/swipe/SwipeConsumer;->canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_5

    .line 166
    :cond_1c
    iget v11, v8, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    :cond_1d
    :goto_5
    return v11
.end method

.method protected canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z
    .locals 14

    move/from16 v2, p2

    move/from16 v0, p4

    move/from16 v1, p5

    float-to-int v3, v0

    float-to-int v4, v1

    move-object v9, p0

    move-object v5, p1

    .line 247
    invoke-virtual {p0, p1, v3, v4}, Lcom/billy/android/swipe/SwipeConsumer;->findTopChildUnder(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v10

    .line 248
    instance-of v3, v10, Lcom/billy/android/swipe/SmartSwipeWrapper;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_3

    .line 249
    move-object v3, v10

    check-cast v3, Lcom/billy/android/swipe/SmartSwipeWrapper;

    .line 250
    iget-object v4, v3, Lcom/billy/android/swipe/SmartSwipeWrapper;->mHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v4, :cond_1

    .line 252
    invoke-virtual {v4}, Lcom/billy/android/swipe/internal/SwipeHelper;->getSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 253
    invoke-virtual/range {v3 .. v8}, Lcom/billy/android/swipe/SwipeConsumer;->calSwipeDirection(IFFFF)I

    move-result v3

    if-eqz v3, :cond_c

    .line 254
    invoke-virtual {v13}, Lcom/billy/android/swipe/SwipeConsumer;->getProgress()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    :cond_0
    :goto_0
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 256
    :cond_1
    invoke-virtual {v3}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getAllConsumers()Ljava/util/List;

    move-result-object v3

    .line 257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v3, :cond_2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 258
    invoke-virtual/range {v3 .. v8}, Lcom/billy/android/swipe/SwipeConsumer;->calSwipeDirection(IFFFF)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_c

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v12, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 v5, 0x4

    if-eq v2, v5, :cond_4

    const/16 v5, 0x8

    if-eq v2, v5, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v4, p7, v4

    if-lez v4, :cond_5

    const/4 v12, -0x1

    .line 284
    :cond_5
    instance-of v3, v10, Landroid/widget/AbsListView;

    if-eqz v3, :cond_6

    .line 285
    move-object v3, v10

    check-cast v3, Landroid/widget/AbsListView;

    invoke-static {v3, v12}, Lcom/billy/android/swipe/internal/ViewCompat;->canListViewScrollVertical(Landroid/widget/AbsListView;I)Z

    move-result v11

    goto :goto_2

    .line 287
    :cond_6
    invoke-virtual {v10, v12}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v11

    goto :goto_2

    .line 268
    :cond_7
    instance-of v5, v10, Landroid/widget/AbsSeekBar;

    if-eqz v5, :cond_a

    .line 269
    move-object v3, v10

    check-cast v3, Landroid/widget/AbsSeekBar;

    .line 270
    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v5

    .line 272
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_8

    .line 273
    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v6

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    .line 275
    :goto_1
    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    cmpl-float v7, p6, v4

    if-lez v7, :cond_9

    if-lt v5, v3, :cond_0

    :cond_9
    cmpg-float v3, p6, v4

    if-gez v3, :cond_c

    if-le v5, v6, :cond_c

    goto :goto_0

    :cond_a
    cmpl-float v4, p6, v4

    if-lez v4, :cond_b

    const/4 v12, -0x1

    .line 278
    :cond_b
    invoke-virtual {v10, v12}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v11

    :cond_c
    :goto_2
    if-nez v11, :cond_d

    .line 293
    instance-of v3, v10, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    .line 294
    move-object v3, v10

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v1, v0

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/billy/android/swipe/SwipeConsumer;->canChildScroll(Landroid/view/ViewGroup;IIFFFF)Z

    move-result v0

    return v0

    :cond_d
    return v11
.end method

.method public clampDistanceHorizontal(II)I
    .locals 1

    .line 444
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceX:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    add-int/2addr p1, p2

    .line 446
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceX:I

    .line 448
    :cond_0
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 449
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    invoke-static {p1, v0, p2}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    return p1

    .line 451
    :cond_1
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 p2, p2, 0x2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isRightEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 452
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    neg-int p2, p2

    invoke-static {p1, p2, v0}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public clampDistanceVertical(II)I
    .locals 1

    .line 458
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceY:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    add-int/2addr p1, p2

    .line 460
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceY:I

    .line 462
    :cond_0
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 p2, p2, 0x4

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isTopEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 463
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    invoke-static {p1, v0, p2}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    return p1

    .line 465
    :cond_1
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 p2, p2, 0x8

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 466
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    neg-int p2, p2

    invoke-static {p1, p2, v0}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(III)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public close()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x0

    .line 983
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->close(Z)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public close(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 3

    .line 991
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 992
    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    .line 993
    iput v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceX:I

    .line 994
    iput v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceY:I

    .line 995
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    .line 998
    new-instance v0, Lcom/billy/android/swipe/SwipeConsumer$2;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SwipeConsumer$2;-><init>(Lcom/billy/android/swipe/SwipeConsumer;)V

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    :cond_0
    if-eqz p1, :cond_1

    .line 1007
    invoke-virtual {p0, v2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(II)V

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(IIII)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public disableAllDirections()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1099
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableBottom()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1090
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 1108
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->close()Lcom/billy/android/swipe/SwipeConsumer;

    .line 1111
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    return-object p0
.end method

.method public disableHorizontal()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1093
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableLeft()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1081
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableRight()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1084
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableTop()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1087
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public disableVertical()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1096
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public enableAllDirections()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1077
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableBottom()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1068
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 1103
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    return-object p0
.end method

.method public enableDirection(IZ)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    if-eqz p2, :cond_0

    .line 1052
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1

    .line 1054
    :cond_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableHorizontal()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1071
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableLeft()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableNestedFlyAllDirections(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1281
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyBottom(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1272
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyHorizontal(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1275
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyLeft(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1263
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyRight(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1266
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyTop(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1269
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedFlyVertical(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1278
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFly(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollAllDirections(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1246
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollBottom(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1237
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollHorizontal(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1240
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollLeft(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1228
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollRight(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1231
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollTop(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1234
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableNestedScrollVertical(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1243
    invoke-direct {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedScroll(IZ)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public enableRight()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1062
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableTop()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1065
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public enableVertical()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1074
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public findTopChildUnder(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    .line 645
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 647
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 648
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 649
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p3, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 650
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 651
    instance-of v2, v1, Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDirection()I
    .locals 1

    .line 1047
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    return v0
.end method

.method public getDragState()I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->getDragState()I

    move-result v0

    return v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 739
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mHeight:I

    return v0
.end method

.method public getHorizontalRange(FF)I
    .locals 1

    .line 426
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    if-nez p2, :cond_2

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isLeftLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isRightEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isRightLocked()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 429
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeOpenDistance()I

    move-result p1

    return p1
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getMaxSettleDuration()Ljava/lang/Integer;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/SwipeHelper;->getMaxSettleDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mMaxSettleDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOpenDistance()I
    .locals 1

    .line 775
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    return v0
.end method

.method public getOverSwipeFactor()F
    .locals 1

    .line 848
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOverSwipeFactor:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 760
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    return v0
.end method

.method public getReleaseMode()I
    .locals 1

    .line 721
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mReleaseMode:I

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .line 701
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSensitivity:F

    return v0
.end method

.method public getSwipeDistanceCalculator()Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

    return-object v0
.end method

.method public getSwipeHelper()Lcom/billy/android/swipe/internal/SwipeHelper;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    return-object v0
.end method

.method public getSwipeOpenDistance()I
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

    if-eqz v0, :cond_0

    .line 769
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    invoke-interface {v0, v1}, Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;->calculateSwipeOpenDistance(I)I

    move-result v0

    return v0

    .line 771
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerticalRange(FF)I
    .locals 1

    .line 435
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isTopEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isTopLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->isBottomLocked()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 438
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeOpenDistance()I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 898
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWidth:I

    return v0
.end method

.method public getWrapper()Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    return-object v0
.end method

.method protected initChildrenFormXml()V
    .locals 0

    return-void
.end method

.method public isAllDirectionsEnable()Z
    .locals 2

    .line 1119
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    const/16 v1, 0xf

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllDirectionsLocked()Z
    .locals 2

    .line 1206
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    const/16 v1, 0xf

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBottomEnable()Z
    .locals 1

    .line 1137
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBottomLocked()Z
    .locals 1

    .line 1224
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1324
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getDragState()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectionEnable(I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1116
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDirectionLocked(I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1203
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDisableSwipeOnSetting()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDisableSwipeOnSettling:Z

    return v0
.end method

.method public isHorizontalDirection()Z
    .locals 1

    .line 1302
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalEnable()Z
    .locals 2

    .line 1125
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalLocked()Z
    .locals 2

    .line 1212
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeftEnable()Z
    .locals 2

    .line 1128
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLeftLocked()Z
    .locals 2

    .line 1215
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isNestedAndDisabled(II)Z
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 241
    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedScrollEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 242
    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedFlyEnable(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNestedFlyEnable(I)Z
    .locals 1

    .line 1294
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNestedScrollEnable(I)Z
    .locals 1

    .line 1259
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableNested:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOpened()Z
    .locals 2

    .line 1320
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getDragState()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightEnable()Z
    .locals 1

    .line 1131
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightLocked()Z
    .locals 1

    .line 1218
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwiping()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwiping:Z

    return v0
.end method

.method public isTopEnable()Z
    .locals 1

    .line 1134
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopLocked()Z
    .locals 1

    .line 1221
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalDirection()Z
    .locals 1

    .line 1298
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 v0, v0, 0xc

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalEnable()Z
    .locals 2

    .line 1122
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEnableDirection:I

    const/16 v1, 0xc

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalLocked()Z
    .locals 2

    .line 1209
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    const/16 v1, 0xc

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 630
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public lockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1167
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockBottom()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1158
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 1194
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    return-object p0
.end method

.method public lockDirection(IZ)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    if-eqz p2, :cond_0

    .line 1142
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1

    .line 1144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method

.method public lockHorizontal()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1161
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockLeft()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1149
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockRight()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1152
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockTop()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1155
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public lockVertical()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1164
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected notifyAttachToWrapper()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-interface {v1, v2, p0}, Lcom/billy/android/swipe/listener/SwipeListener;->onConsumerAttachedToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyDetachFromWrapper()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-interface {v1, v2, p0}, Lcom/billy/android/swipe/listener/SwipeListener;->onConsumerDetachedFromWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeClosed()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-interface {v1, v2, p0, v3}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeClosed(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeOpened()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 364
    iget-object v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-interface {v1, v2, p0, v3}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeOpened(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeProgress(Z)V
    .locals 8

    .line 418
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v2, :cond_0

    .line 420
    iget-object v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v5, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    iget v7, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    move-object v4, p0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeProcess(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeRelease(FF)V
    .locals 9

    .line 410
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v2, :cond_0

    .line 412
    iget-object v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v5, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    iget v6, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    move-object v4, p0

    move v7, p1

    move v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeRelease(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IFFF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeStart()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v1, :cond_0

    .line 404
    iget-object v2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-interface {v1, v2, p0, v3}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeStart(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifySwipeStateChanged(I)V
    .locals 8

    .line 394
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/billy/android/swipe/listener/SwipeListener;

    if-eqz v2, :cond_0

    .line 396
    iget-object v3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    iget v6, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    iget v7, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    move-object v4, p0

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/billy/android/swipe/listener/SwipeListener;->onSwipeStateChanged(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IIF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAttachToWrapper(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/internal/SwipeHelper;)V
    .locals 1

    .line 544
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    .line 545
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    if-nez v0, :cond_0

    .line 546
    sget v0, Lcom/billy/android/swipe/SwipeConsumer;->DEFAULT_OPEN_DISTANCE_IN_DP:I

    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    .line 548
    :cond_0
    iput-object p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    .line 549
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mMaxSettleDuration:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setMaxSettleDuration(I)V

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->isInflateFromXml()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->initChildrenFormXml()V

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifyAttachToWrapper()V

    return-void
.end method

.method protected onClosed()V
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeClosed()V

    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifyDetachFromWrapper()V

    .line 573
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->reset()V

    return-void
.end method

.method protected abstract onDisplayDistanceChanged(IIII)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 598
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWidth:I

    .line 599
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mHeight:I

    return-void
.end method

.method protected onOpened()V
    .locals 0

    .line 673
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeOpened()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 661
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeStateChanged(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 663
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwiping:Z

    .line 664
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onOpened()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onClosed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwipeAccepted(IZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwiping:Z

    .line 301
    iget-object p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {p2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 303
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 305
    :cond_0
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    if-eqz p1, :cond_2

    .line 306
    :cond_1
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceX:I

    .line 307
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceY:I

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getSwipeOpenDistance()I

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeOpenDistance:I

    .line 310
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOverSwipeFactor:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 311
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    goto :goto_0

    .line 313
    :cond_3
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeMaxDistance:I

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeStart()V

    return-void
.end method

.method public onSwipeDistanceChanged(IIII)V
    .locals 6

    .line 481
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getOpenDistance()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    .line 486
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    if-eq p2, v1, :cond_9

    .line 487
    :cond_1
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    .line 488
    iput p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    .line 490
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeOpenDistance:I

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    .line 491
    iput v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    goto :goto_0

    .line 493
    :cond_2
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/16 v5, 0x8

    if-eq v1, v5, :cond_3

    goto :goto_0

    .line 498
    :cond_3
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    int-to-float v1, v1

    iget v5, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeOpenDistance:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    goto :goto_0

    .line 495
    :cond_4
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    int-to-float v1, v1

    iget v5, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeOpenDistance:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    .line 503
    :goto_0
    iget v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    and-int/lit8 v5, v1, 0x3

    if-lez v5, :cond_6

    .line 505
    iget-object p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

    if-eqz p2, :cond_5

    .line 506
    iget p3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    invoke-interface {p2, p1, p3}, Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;->calculateSwipeDistance(IF)I

    move-result p1

    .line 508
    :cond_5
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceX:I

    sub-int p3, p1, p2

    .line 510
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceX:I

    const/4 p4, 0x0

    goto :goto_1

    :cond_6
    and-int/lit8 p1, v1, 0xc

    if-lez p1, :cond_8

    .line 513
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

    if-eqz p1, :cond_7

    .line 514
    iget p3, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    invoke-interface {p1, p2, p3}, Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;->calculateSwipeDistance(IF)I

    move-result p2

    .line 517
    :cond_7
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceY:I

    sub-int p4, p2, p1

    .line 518
    iput p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceY:I

    const/4 p3, 0x0

    .line 520
    :cond_8
    :goto_1
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceX:I

    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceY:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/billy/android/swipe/SwipeConsumer;->onDisplayDistanceChanged(IIII)V

    .line 522
    :cond_9
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    .line 523
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getDragState()I

    move-result p1

    if-ne p1, v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    .line 524
    :goto_2
    invoke-virtual {p0, v3}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeProgress(Z)V

    :cond_b
    return-void
.end method

.method public onSwipeReleased(FF)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 321
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 323
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->notifySwipeRelease(FF)V

    .line 324
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 325
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mReleaseMode:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 326
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(F)Lcom/billy/android/swipe/SwipeConsumer;

    return-void

    .line 330
    :cond_1
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mReleaseMode:I

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->smoothOpenOrClose(FF)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(F)Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    .line 334
    :cond_4
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onOpened()V

    :cond_5
    const/4 p1, 0x0

    .line 337
    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(F)Lcom/billy/android/swipe/SwipeConsumer;

    :goto_0
    return-void
.end method

.method public open(ZI)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 3

    .line 956
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 957
    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iput p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 959
    invoke-virtual {p0, p2, v0, v2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->onSwipeAccepted(IZFF)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    if-ne v0, p2, :cond_4

    .line 963
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p2, p2, v1

    if-nez p2, :cond_2

    goto :goto_1

    .line 966
    :cond_2
    :goto_0
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionLocked(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 968
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    .line 969
    invoke-virtual {p0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->lockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    .line 970
    new-instance v0, Lcom/billy/android/swipe/SwipeConsumer$1;

    invoke-direct {v0, p0, p2}, Lcom/billy/android/swipe/SwipeConsumer$1;-><init>(Lcom/billy/android/swipe/SwipeConsumer;I)V

    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    .line 978
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->slideTo(ZF)Lcom/billy/android/swipe/SwipeConsumer;

    :cond_4
    :goto_1
    return-object p0
.end method

.method public removeAllListeners()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public removeListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected reset()V
    .locals 2

    const/4 v0, 0x0

    .line 682
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/4 v1, 0x0

    .line 683
    iput v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    .line 684
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceX:I

    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceX:I

    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceX:I

    .line 685
    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurDisplayDistanceY:I

    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCurSwipeDistanceY:I

    iput v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mCachedSwipeDistanceY:I

    return-void
.end method

.method public setBottomOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 939
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentStateAsClosed()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->onClosed()V

    .line 358
    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->reset()V

    return-void
.end method

.method public setDisableSwipeOnSettling(Z)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 843
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDisableSwipeOnSettling:Z

    return-object p0
.end method

.method public setEdgeSize(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 743
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mEdgeSize:I

    return-object p0
.end method

.method public setHeight(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 925
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mHeight:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    .line 693
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 694
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setInterpolator(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :cond_0
    return-object p0
.end method

.method public setLeftOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 930
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public setMaxSettleDuration(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 890
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mMaxSettleDuration:Ljava/lang/Integer;

    .line 891
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setMaxSettleDuration(I)V

    :cond_0
    return-object p0
.end method

.method public setOpenDistance(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 779
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistance:I

    const/4 p1, 0x1

    .line 780
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOpenDistanceSpecified:Z

    return-object p0
.end method

.method public setOverSwipeFactor(F)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 859
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mOverSwipeFactor:F

    :cond_0
    return-object p0
.end method

.method public setReleaseMode(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 734
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mReleaseMode:I

    return-object p0
.end method

.method public setRightOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 933
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public setSensitivity(F)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 712
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSensitivity:F

    .line 713
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/internal/SwipeHelper;->setSensitivity(F)V

    :cond_0
    return-object p0
.end method

.method public setSwipeDistanceCalculator(Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeDistanceCalculator:Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTopOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 936
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public setWidth(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 909
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWidth:I

    return-object p0
.end method

.method public slideTo(ZF)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1021
    invoke-static {p2, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p2

    .line 1023
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeOpenDistance:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1024
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    neg-int p2, p2

    :cond_1
    move v2, p2

    goto :goto_0

    :cond_2
    neg-int p2, p2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1032
    invoke-virtual {p0, p2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(II)V

    goto :goto_2

    .line 1034
    :cond_4
    invoke-virtual {p0, p2, v2, p2, v2}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(IIII)V

    :goto_2
    return-object p0
.end method

.method public smoothBottomOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 952
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public smoothClose()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 987
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->close(Z)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public smoothLeftOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 943
    invoke-virtual {p0, v0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected smoothOpenOrClose(FF)V
    .locals 6

    .line 346
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float p1, p2, v4

    if-ltz p1, :cond_5

    cmpl-float p1, p2, v4

    if-nez p1, :cond_4

    .line 350
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, v4

    if-gtz p1, :cond_5

    if-nez p1, :cond_4

    .line 349
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_2
    cmpg-float p2, p1, v4

    if-ltz p2, :cond_5

    cmpl-float p1, p1, v4

    if-nez p1, :cond_4

    .line 348
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_3
    cmpl-float p1, p1, v4

    if-gtz p1, :cond_5

    if-nez p1, :cond_4

    .line 347
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mProgress:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    .line 353
    :cond_6
    invoke-virtual {p0, v4}, Lcom/billy/android/swipe/SwipeConsumer;->smoothSlideTo(F)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method

.method public smoothRightOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 946
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public smoothSlideTo(F)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1016
    invoke-virtual {p0, v0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->slideTo(ZF)Lcom/billy/android/swipe/SwipeConsumer;

    return-object p0
.end method

.method public smoothSlideTo(II)V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v0, p1, p2}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSlideTo(II)Z

    .line 1315
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public smoothSlideTo(IIII)V
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mSwipeHelper:Lcom/billy/android/swipe/internal/SwipeHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/billy/android/swipe/internal/SwipeHelper;->smoothSlideTo(IIII)Z

    .line 1308
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-static {p1}, Lcom/billy/android/swipe/internal/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public smoothTopOpen()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 949
    invoke-virtual {p0, v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public tryAcceptMoving(IFFFF)Z
    .locals 0

    .line 139
    invoke-virtual/range {p0 .. p5}, Lcom/billy/android/swipe/SwipeConsumer;->calSwipeDirection(IFFFF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 142
    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    :cond_1
    return p2
.end method

.method public tryAcceptSettling(IFF)Z
    .locals 0

    .line 129
    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->isNestedAndDisabled(II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 132
    :cond_0
    iget-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDisableSwipeOnSettling:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/billy/android/swipe/SwipeConsumer;->getDragState()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    return p2

    .line 135
    :cond_1
    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionEnable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mDirection:I

    invoke-virtual {p0, p1}, Lcom/billy/android/swipe/SwipeConsumer;->isDirectionLocked(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public unlockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xf

    .line 1189
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockBottom()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0x8

    .line 1180
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 1199
    iget v0, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/SwipeConsumer;->mLockDirection:I

    return-object p0
.end method

.method public unlockHorizontal()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x3

    .line 1183
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockLeft()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x1

    .line 1171
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockRight()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x2

    .line 1174
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockTop()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/4 v0, 0x4

    .line 1177
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method

.method public unlockVertical()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    const/16 v0, 0xc

    .line 1186
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    return-object v0
.end method
