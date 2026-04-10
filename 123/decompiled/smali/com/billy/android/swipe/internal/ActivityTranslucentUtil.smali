.class public Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;
.super Ljava/lang/Object;
.source "ActivityTranslucentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;
    }
.end annotation


# static fields
.field private static convertingActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialedConvertFromTranslucent:Z

.field private static mInitialedConvertToTranslucent:Z

.field private static mMethodConvertFromTranslucent:Ljava/lang/reflect/Method;

.field private static mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

.field private static mMethodGetActivityOptions:Ljava/lang/reflect/Method;

.field private static mTranslucentConversionListenerClass:Ljava/lang/Class;


# instance fields
.field private convertActivityToTranslucentIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private convertTranslucentTimeStamp:J

.field private mActivity:Landroid/app/Activity;

.field private mIsTranslucent:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$1;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$1;-><init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;)V

    iput-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucentIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 41
    iput-object p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertTranslucentTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->setTranslucent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertCallback(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V

    return-void
.end method

.method public static convertActivityFromTranslucent(Landroid/app/Activity;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertingActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 198
    sput-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertingActivity:Ljava/lang/ref/WeakReference;

    .line 201
    :cond_1
    :try_start_0
    sget-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertFromTranslucent:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 202
    sget-boolean v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mInitialedConvertFromTranslucent:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 205
    sput-boolean v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mInitialedConvertFromTranslucent:Z

    .line 206
    const-class v2, Landroid/app/Activity;

    const-string v3, "convertFromTranslucent"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    sput-object v2, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertFromTranslucent:Ljava/lang/reflect/Method;

    .line 210
    :cond_3
    sget-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertFromTranslucent:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static convertActivityToTranslucent(Landroid/app/Activity;Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;)V
    .locals 8

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertingActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 128
    :try_start_0
    sget-object v1, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 129
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 130
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 131
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TranslucentConversionListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    sput-object v4, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_1
    sget-object v1, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 140
    new-instance v1, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$3;

    invoke-direct {v1, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$3;-><init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;)V

    .line 151
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 153
    :goto_1
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mInitialedConvertToTranslucent:Z

    if-eqz v3, :cond_3

    .line 154
    invoke-static {p1, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertCallback(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V

    return-void

    .line 157
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x15

    const-string v5, "convertToTranslucent"

    if-lt v3, v4, :cond_5

    .line 158
    :try_start_1
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 159
    sput-boolean v2, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mInitialedConvertToTranslucent:Z

    .line 160
    const-class v3, Landroid/app/Activity;

    const-string v6, "getActivityOptions"

    new-array v7, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 162
    sput-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodGetActivityOptions:Ljava/lang/reflect/Method;

    .line 163
    const-class v3, Landroid/app/Activity;

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Landroid/app/ActivityOptions;

    aput-object v7, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 165
    sput-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    .line 167
    :cond_4
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodGetActivityOptions:Ljava/lang/reflect/Method;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    sget-object v5, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    aput-object v3, v4, v2

    invoke-virtual {v5, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 170
    :cond_5
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    .line 171
    sput-boolean v2, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mInitialedConvertToTranslucent:Z

    .line 172
    const-class v3, Landroid/app/Activity;

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mTranslucentConversionListenerClass:Ljava/lang/Class;

    aput-object v6, v4, v0

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 174
    sput-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    .line 176
    :cond_6
    sget-object v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mMethodConvertToTranslucent:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-nez v1, :cond_7

    .line 179
    invoke-static {p1, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertCallback(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 182
    :catchall_0
    invoke-static {p1, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertCallback(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static convertCallback(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 188
    invoke-interface {p0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;->onTranslucentCallback(Z)V

    :cond_0
    const/4 p0, 0x0

    .line 190
    sput-object p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertingActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static convertWindowToTranslucent(Landroid/app/Activity;)V
    .locals 5

    if-eqz p0, :cond_1

    const v0, 0x1020002

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 51
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->peekWrapperFor(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0, v2}, Lcom/billy/android/swipe/SmartSwipeWrapper;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private setTranslucent(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mIsTranslucent:Z

    return-void
.end method


# virtual methods
.method public convertActivityFromTranslucent()V
    .locals 2

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertTranslucentTimeStamp:J

    .line 105
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityFromTranslucent(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->setTranslucent(Z)V

    return-void
.end method

.method public convertActivityToTranslucent()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent(Z)V

    return-void
.end method

.method public convertActivityToTranslucent(Z)V
    .locals 4

    .line 80
    iget-boolean v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mIsTranslucent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertingActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucentIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    .line 87
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertTranslucentTimeStamp:J

    .line 89
    iget-object v2, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;-><init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;JZ)V

    invoke-static {v2, v3}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent(Landroid/app/Activity;Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isTranslucent()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->mIsTranslucent:Z

    return v0
.end method
