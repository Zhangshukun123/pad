.class public Lcom/ayma/base/widget/ClearEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/ayma/base/widget/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/ayma/base/widget/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/ayma/base/widget/ClearEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ayma/base/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ayma/base/R$drawable;->clear:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/base/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/ayma/base/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/ayma/base/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/ayma/base/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 56
    new-instance v0, Lcom/ayma/base/widget/ClearEditText$1;

    invoke-direct {v0, p0}, Lcom/ayma/base/widget/ClearEditText$1;-><init>(Lcom/ayma/base/widget/ClearEditText;)V

    invoke-virtual {p0, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ayma/base/widget/ClearEditText;->setClearIconVisible(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 94
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 96
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/2addr v5, v2

    .line 97
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getTotalPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-le v3, v5, :cond_1

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 100
    invoke-virtual {p0, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected setClearIconVisible(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/ayma/base/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 124
    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/ayma/base/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 123
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/ayma/base/widget/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
