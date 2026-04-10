.class public Lcom/ayma/watermark/widget/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ayma/watermark/widget/Watermark;


# instance fields
.field private mRotation:F

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/ayma/watermark/widget/Watermark;->mText:Ljava/lang/String;

    const v0, -0x51515152

    .line 66
    iput v0, p0, Lcom/ayma/watermark/widget/Watermark;->mTextColor:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 67
    iput v0, p0, Lcom/ayma/watermark/widget/Watermark;->mTextSize:F

    const/high16 v0, -0x3e380000    # -25.0f

    .line 68
    iput v0, p0, Lcom/ayma/watermark/widget/Watermark;->mRotation:F

    return-void
.end method

.method public static getInstance()Lcom/ayma/watermark/widget/Watermark;
    .locals 2

    .line 72
    sget-object v0, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    if-nez v0, :cond_0

    .line 73
    const-class v0, Lcom/ayma/watermark/widget/Watermark;

    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Lcom/ayma/watermark/widget/Watermark;

    invoke-direct {v1}, Lcom/ayma/watermark/widget/Watermark;-><init>()V

    sput-object v1, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    .line 75
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_0
    :goto_0
    sget-object v0, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    return-object v0
.end method


# virtual methods
.method public generateWatermarkDrawable()Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;
    .locals 2

    .line 216
    new-instance v0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;-><init>(Lcom/ayma/watermark/widget/Watermark$1;)V

    .line 217
    iget-object v1, p0, Lcom/ayma/watermark/widget/Watermark;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$102(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget v1, p0, Lcom/ayma/watermark/widget/Watermark;->mTextColor:I

    invoke-static {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$202(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;I)I

    .line 219
    iget v1, p0, Lcom/ayma/watermark/widget/Watermark;->mTextSize:F

    invoke-static {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$302(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    .line 220
    iget v1, p0, Lcom/ayma/watermark/widget/Watermark;->mRotation:F

    invoke-static {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$402(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    return-object v0
.end method

.method public setRotation(F)Lcom/ayma/watermark/widget/Watermark;
    .locals 0

    .line 120
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark;->mRotation:F

    .line 121
    sget-object p1, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    return-object p1
.end method

.method public setText(Ljava/lang/String;)Lcom/ayma/watermark/widget/Watermark;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ayma/watermark/widget/Watermark;->mText:Ljava/lang/String;

    .line 88
    sget-object p1, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    return-object p1
.end method

.method public setTextColor(I)Lcom/ayma/watermark/widget/Watermark;
    .locals 0

    .line 98
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark;->mTextColor:I

    .line 99
    sget-object p1, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    return-object p1
.end method

.method public setTextSize(F)Lcom/ayma/watermark/widget/Watermark;
    .locals 0

    .line 109
    iput p1, p0, Lcom/ayma/watermark/widget/Watermark;->mTextSize:F

    .line 110
    sget-object p1, Lcom/ayma/watermark/widget/Watermark;->sInstance:Lcom/ayma/watermark/widget/Watermark;

    return-object p1
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ayma/watermark/widget/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ayma/watermark/widget/Watermark;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 149
    new-instance v0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;-><init>(Lcom/ayma/watermark/widget/Watermark$1;)V

    .line 150
    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$102(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mTextColor:I

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$202(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;I)I

    .line 152
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mTextSize:F

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$302(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    .line 153
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mRotation:F

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$402(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 155
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 156
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const p2, 0x1020002

    .line 161
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 162
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x80

    invoke-direct {p1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showTwo(Landroid/app/Activity;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ayma/watermark/widget/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ayma/watermark/widget/Watermark;->showTwo(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showTwo(Landroid/app/Activity;Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;)V
    .locals 5

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 203
    invoke-static {v0}, Lcom/ayma/watermark/util/DensityUtil;->dp2px(F)I

    move-result v0

    const v1, 0x1020002

    .line 205
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 206
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x80

    invoke-direct {p1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v3, 0x0

    .line 209
    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 210
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showTwo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 179
    new-instance v0, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;-><init>(Lcom/ayma/watermark/widget/Watermark$1;)V

    .line 180
    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$102(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mTextColor:I

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$202(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;I)I

    .line 182
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mTextSize:F

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$302(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    .line 183
    iget p2, p0, Lcom/ayma/watermark/widget/Watermark;->mRotation:F

    invoke-static {v0, p2}, Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;->access$402(Lcom/ayma/watermark/widget/Watermark$WatermarkDrawable;F)F

    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 185
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 p2, 0x42a00000    # 80.0f

    .line 187
    invoke-static {p2}, Lcom/ayma/watermark/util/DensityUtil;->dp2px(F)I

    move-result p2

    const v1, 0x1020002

    .line 189
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 190
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x80

    invoke-direct {p1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
