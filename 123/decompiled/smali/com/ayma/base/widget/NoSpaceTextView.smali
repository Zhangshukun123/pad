.class public Lcom/ayma/base/widget/NoSpaceTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "NoSpaceTextView.java"


# instance fields
.field private refreshMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    return-void
.end method

.method private getLinesText()[Ljava/lang/String;
    .locals 6

    .line 91
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getLineCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getLineCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 98
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 100
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 103
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private removeSpace(II)V
    .locals 9

    .line 53
    invoke-direct {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getLinesText()[Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 56
    aget-object v4, v0, v3

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 59
    new-instance v4, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v4}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 60
    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 62
    iget v5, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 65
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getLeftPaddingOffset()I

    move-result v6

    .line 66
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getTopPaddingOffset()I

    move-result v7

    add-int/2addr v5, v7

    .line 67
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getRightPaddingOffset()I

    move-result v7

    .line 68
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getBottomPaddingOffset()I

    move-result v8

    .line 65
    invoke-virtual {p0, v6, v5, v7, v8}, Lcom/ayma/base/widget/NoSpaceTextView;->setPadding(IIII)V

    .line 70
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v0, v3, v5, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 74
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getMeasuredWidth()I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/ayma/base/widget/NoSpaceTextView;->getMeasuredHeight()I

    move-result v1

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    sub-int/2addr v1, v4

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/ayma/base/widget/NoSpaceTextView;->setMeasuredDimension(II)V

    .line 77
    iget-boolean v0, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v3, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/ayma/base/widget/NoSpaceTextView;->measure(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ayma/base/widget/NoSpaceTextView;->removeSpace(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/ayma/base/widget/NoSpaceTextView;->refreshMeasure:Z

    return-void
.end method
