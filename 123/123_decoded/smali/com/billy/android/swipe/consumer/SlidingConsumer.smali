.class public Lcom/billy/android/swipe/consumer/SlidingConsumer;
.super Lcom/billy/android/swipe/consumer/DrawerConsumer;
.source "SlidingConsumer.java"


# static fields
.field public static final FACTOR_COVER:F = 0.0f

.field public static final FACTOR_FOLLOW:F = 1.0f


# instance fields
.field protected mDrawerExpandable:Z

.field protected mDrawerH:I

.field protected mDrawerW:I

.field protected mEdgeAffinity:Z

.field protected mRelativeMoveFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    iput v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    return-void
.end method


# virtual methods
.method protected calculateDrawerDirectionInitPosition(III)V
    .locals 3

    .line 39
    iput p2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    .line 40
    iput p3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    .line 41
    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mOpenDistance:I

    int-to-float v0, v0

    iget v1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    .line 66
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    iget p2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    if-ge p1, p2, :cond_6

    .line 67
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    .line 68
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    goto :goto_0

    .line 59
    :cond_1
    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    neg-int p1, p3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    .line 60
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    if-lez p1, :cond_2

    .line 61
    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    .line 63
    :cond_2
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    goto :goto_0

    .line 51
    :cond_3
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    .line 52
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    iput p3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    .line 53
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    iget p3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    if-ge p1, p3, :cond_6

    .line 54
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    .line 55
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    goto :goto_0

    :cond_4
    neg-int p1, p2

    add-int/2addr p1, v0

    .line 44
    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    .line 45
    iget-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    if-lez p1, :cond_5

    .line 46
    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    .line 48
    :cond_5
    iget p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    iput v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    iput p3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    :cond_6
    :goto_0
    return-void
.end method

.method public getRelativeMoveFactor()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    return v0
.end method

.method public isDrawerExpandable()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    return v0
.end method

.method public isEdgeAffinity()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    return v0
.end method

.method protected layoutContentView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 94
    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceX:I

    iget v1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceY:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    iget v4, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected layoutDrawerView()V
    .locals 12

    .line 100
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDrawerView:Landroid/view/View;

    if-eqz v0, :cond_16

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 105
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    .line 107
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceX:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, -0x41000000    # -0.5f

    if-lez v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v3, -0x41000000    # -0.5f

    :goto_0
    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 108
    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceY:I

    int-to-float v3, v3

    iget v6, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    mul-float v3, v3, v6

    iget v6, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceY:I

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, -0x41000000    # -0.5f

    :goto_1
    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 110
    iget v4, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    iget v5, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    iget v6, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    iget v7, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    .line 111
    iget v8, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDirection:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_12

    const/4 v9, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v8, v9, :cond_d

    const/4 v2, 0x4

    if-eq v8, v2, :cond_9

    const/16 v2, 0x8

    if-eq v8, v2, :cond_4

    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 163
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 164
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->b:I

    add-int/2addr v2, v3

    .line 165
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    if-nez v3, :cond_7

    .line 166
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    add-int/2addr v3, v0

    iget v5, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    if-ge v3, v5, :cond_5

    .line 167
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    add-int/2addr v2, v0

    goto :goto_3

    .line 168
    :cond_5
    iget-boolean v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    if-ge v2, v3, :cond_6

    .line 169
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    :cond_6
    :goto_3
    sub-int v3, v2, v0

    .line 171
    iget v5, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    if-le v3, v5, :cond_8

    sub-int v0, v2, v5

    goto :goto_4

    .line 174
    :cond_7
    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    if-ge v2, v3, :cond_8

    .line 175
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    :cond_8
    :goto_4
    move v5, v0

    move v7, v2

    .line 177
    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mOpenDistance:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceY:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    sub-float/2addr v11, v2

    mul-float v0, v0, v11

    float-to-int v0, v0

    .line 178
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_a

    .line 147
    :cond_9
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->t:I

    add-int v5, v2, v3

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 149
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    if-nez v0, :cond_c

    .line 150
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    if-le v7, v0, :cond_a

    sub-int v0, v7, v0

    move v5, v0

    goto :goto_5

    .line 152
    :cond_a
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz v0, :cond_b

    if-lez v5, :cond_b

    const/4 v5, 0x0

    :cond_b
    :goto_5
    sub-int v0, v7, v5

    .line 155
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerH:I

    if-le v0, v2, :cond_3

    add-int v7, v5, v2

    goto :goto_2

    :cond_c
    if-lez v5, :cond_3

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 129
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 130
    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->r:I

    add-int/2addr v3, v2

    .line 131
    iget-boolean v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    if-nez v2, :cond_10

    .line 132
    iget-boolean v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    if-ge v2, v4, :cond_e

    .line 133
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    add-int v3, v0, v2

    goto :goto_6

    .line 134
    :cond_e
    iget-boolean v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    if-ge v3, v2, :cond_f

    .line 135
    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    :cond_f
    :goto_6
    sub-int v2, v3, v0

    .line 137
    iget v4, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    if-le v2, v4, :cond_11

    sub-int v0, v3, v4

    goto :goto_7

    .line 140
    :cond_10
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    if-ge v3, v2, :cond_11

    .line 141
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    move v4, v0

    move v6, v2

    goto :goto_8

    :cond_11
    :goto_7
    move v4, v0

    move v6, v3

    .line 143
    :goto_8
    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mOpenDistance:I

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mCurDisplayDistanceX:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    sub-float/2addr v11, v2

    mul-float v0, v0, v11

    float-to-int v0, v0

    .line 144
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    goto/16 :goto_2

    .line 113
    :cond_12
    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->l:I

    add-int v4, v3, v2

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 115
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    if-nez v0, :cond_15

    .line 116
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    if-le v6, v0, :cond_13

    sub-int v0, v6, v0

    move v4, v0

    goto :goto_9

    .line 118
    :cond_13
    iget-boolean v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    if-eqz v0, :cond_14

    if-lez v4, :cond_14

    const/4 v4, 0x0

    :cond_14
    :goto_9
    sub-int v0, v6, v4

    .line 121
    iget v2, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerW:I

    if-le v0, v2, :cond_3

    add-int v6, v4, v2

    goto/16 :goto_2

    :cond_15
    if-lez v4, :cond_3

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 182
    :goto_a
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 185
    invoke-virtual {v1, v10, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_16
    :goto_b
    return-void
.end method

.method public onDetachFromWrapper()V
    .locals 5

    .line 25
    invoke-super {p0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->onDetachFromWrapper()V

    .line 26
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerViews:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4, v2, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 33
    iget v1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWidth:I

    iget v3, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onDisplayDistanceChanged(IIII)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/billy/android/swipe/consumer/SlidingConsumer;->layoutChildren()V

    return-void
.end method

.method protected orderChildren()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mWrapper:Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mScrimView:Lcom/billy/android/swipe/internal/ScrimView;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ScrimView;->bringToFront()V

    :cond_1
    return-void
.end method

.method public setDrawerExpandable(Z)Lcom/billy/android/swipe/consumer/SlidingConsumer;
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mDrawerExpandable:Z

    return-object p0
.end method

.method public setEdgeAffinity(Z)Lcom/billy/android/swipe/consumer/SlidingConsumer;
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mEdgeAffinity:Z

    return-object p0
.end method

.method public setRelativeMoveFactor(F)Lcom/billy/android/swipe/consumer/SlidingConsumer;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    invoke-static {p1, v0, v1}, Lcom/billy/android/swipe/SmartSwipe;->ensureBetween(FFF)F

    move-result p1

    iput p1, p0, Lcom/billy/android/swipe/consumer/SlidingConsumer;->mRelativeMoveFactor:F

    return-object p0
.end method
