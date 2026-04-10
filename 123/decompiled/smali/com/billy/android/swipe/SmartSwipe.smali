.class public Lcom/billy/android/swipe/SmartSwipe;
.super Ljava/lang/Object;
.source "SmartSwipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;
    }
.end annotation


# static fields
.field private static factory:Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.billy.android.swipe.androidx.WrapperFactory"

    .line 188
    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipe;->initFactoryByClassName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.billy.android.swipe.support.WrapperFactory"

    .line 191
    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipe;->initFactoryByClassName(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNewWrapper(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 1

    .line 160
    sget-object v0, Lcom/billy/android/swipe/SmartSwipe;->factory:Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p0}, Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;->createWrapper(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeWrapper;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dp2px(ILandroid/content/Context;)I
    .locals 1

    int-to-float p0, p0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static enableOrDisableFor(Lcom/billy/android/swipe/SmartSwipeWrapper;ZI)V
    .locals 0

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, p2, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->enableDirection(IZ)Lcom/billy/android/swipe/SmartSwipeWrapper;

    :cond_0
    return-void
.end method

.method public static ensureBetween(DDD)D
    .locals 0

    .line 153
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static ensureBetween(FFF)F
    .locals 0

    .line 149
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static ensureBetween(III)I
    .locals 0

    .line 145
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static initFactoryByClassName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v1, v0, [Ljava/lang/Class;

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    instance-of v1, p0, Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;

    if-eqz v1, :cond_0

    .line 205
    check-cast p0, Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;

    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->setFactory(Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static peekWrapperFor(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/billy/android/swipe/SmartSwipeWrapper;

    return-object p0

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static peekWrapperFor(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/billy/android/swipe/SmartSwipeWrapper;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/billy/android/swipe/SmartSwipeWrapper;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setFactory(Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;)V
    .locals 0

    .line 177
    sput-object p0, Lcom/billy/android/swipe/SmartSwipe;->factory:Lcom/billy/android/swipe/SmartSwipe$IWrapperFactory;

    return-void
.end method

.method public static switchDirectionEnable(Landroid/app/Activity;ZI)V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->peekWrapperFor(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/billy/android/swipe/SmartSwipe;->enableOrDisableFor(Lcom/billy/android/swipe/SmartSwipeWrapper;ZI)V

    return-void
.end method

.method public static switchDirectionEnable(Landroid/view/View;ZI)V
    .locals 0

    .line 127
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->peekWrapperFor(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/billy/android/swipe/SmartSwipe;->enableOrDisableFor(Lcom/billy/android/swipe/SmartSwipeWrapper;ZI)V

    return-void
.end method

.method public static wrap(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 6

    .line 28
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->peekWrapperFor(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 33
    instance-of v0, p0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    if-eqz v0, :cond_2

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 37
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 39
    invoke-static {v4}, Lcom/billy/android/swipe/SmartSwipe;->wrap(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->wrap(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/app/Activity;I)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 0

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->wrap(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrap(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;
    .locals 4

    .line 87
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->peekWrapperFor(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/billy/android/swipe/SmartSwipe;->createNewWrapper(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v2

    .line 95
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 96
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/billy/android/swipe/SmartSwipe;->createNewWrapper(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v2, v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_2
    :goto_0
    invoke-virtual {v2, p0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setContentView(Landroid/view/View;)V

    return-object v2
.end method
