.class public Lcom/ayma/commonerp/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private minflater:Landroid/view/LayoutInflater;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/ayma/commonerp/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/widget/FlowLayout;->minflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public delItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 115
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/ayma/commonerp/widget/FlowLayout;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/widget/FlowLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 86
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public initData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 92
    iget-object v3, p0, Lcom/ayma/commonerp/widget/FlowLayout;->minflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b00a4

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ayma/commonerp/widget/FlowLayout;->view:Landroid/view/View;

    const v4, 0x7f080537

    .line 93
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v4, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;

    invoke-direct {v4, p0, p1, v2}, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;-><init>(Lcom/ayma/commonerp/widget/FlowLayout;Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v3, p0, Lcom/ayma/commonerp/widget/FlowLayout;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/ayma/commonerp/widget/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$initData$0$FlowLayout(Ljava/util/List;ILandroid/view/View;)V
    .locals 3

    .line 97
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u63d0\u793a"

    .line 98
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u662f\u5426\u5220\u9664%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v0, Lcom/ayma/commonerp/widget/FlowLayout$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ayma/commonerp/widget/FlowLayout$1;-><init>(Lcom/ayma/commonerp/widget/FlowLayout;Ljava/util/List;I)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {p3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingLeft()I

    move-result v0

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingRight()I

    move-result v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingTop()I

    move-result v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getWidth()I

    move-result v3

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    move-object/from16 v11, p0

    .line 48
    invoke-virtual {v11, v7}, Lcom/ayma/commonerp/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 50
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 52
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v16, v8, v14

    .line 59
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, v16, v6

    move/from16 p2, v4

    add-int v4, v3, v1

    if-le v6, v4, :cond_0

    .line 60
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    .line 61
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v9

    move v10, v9

    const/4 v6, 0x0

    goto :goto_2

    .line 66
    :cond_0
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    if-eqz v5, :cond_1

    .line 68
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v2

    goto :goto_1

    .line 71
    :cond_1
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v10

    :goto_1
    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    :goto_2
    add-int/2addr v14, v4

    .line 75
    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v14

    add-int/2addr v15, v5

    .line 76
    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v15

    .line 78
    invoke-virtual {v12, v4, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, p2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object/from16 v11, p0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 121
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 123
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 124
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getChildCount()I

    move-result v5

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingRight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v5, :cond_2

    .line 133
    invoke-virtual {v0, v8}, Lcom/ayma/commonerp/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move/from16 v13, p1

    move/from16 v14, p2

    .line 135
    invoke-virtual {v0, v12, v13, v14}, Lcom/ayma/commonerp/widget/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v16, v16, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v3, v16, v3

    .line 138
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v9, v3

    sub-int v13, v1, v6

    sub-int/2addr v13, v7

    if-le v9, v13, :cond_0

    add-int/2addr v11, v12

    .line 143
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v9

    move v9, v3

    goto :goto_1

    .line 148
    :cond_0
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v10, v3

    :goto_1
    add-int/lit8 v3, v5, -0x1

    if-ne v8, v3, :cond_1

    add-int/2addr v11, v12

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    goto :goto_0

    :cond_2
    move/from16 v17, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v10, v6

    add-int v1, v10, v7

    :goto_2
    if-ne v4, v3, :cond_4

    move/from16 v3, v17

    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/widget/FlowLayout;->getPaddingBottom()I

    move-result v2

    add-int v3, v11, v2

    :goto_3
    invoke-virtual {v0, v1, v3}, Lcom/ayma/commonerp/widget/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
