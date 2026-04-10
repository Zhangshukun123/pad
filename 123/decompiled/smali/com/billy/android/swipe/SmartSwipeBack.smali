.class public Lcom/billy/android/swipe/SmartSwipeBack;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;,
        Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;,
        Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;,
        Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;
    }
.end annotation


# static fields
.field public static final ACTIVITIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

.field private static mPreviousFinder:Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->ACTIVITIES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public static activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    invoke-direct {v0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;-><init>(Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    sput-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    invoke-static {v0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->access$002(Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;)Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

    .line 73
    sget-object p1, Lcom/billy/android/swipe/SmartSwipeBack;->activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    invoke-static {p1, p2}, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->access$102(Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;

    .line 75
    :goto_0
    sget-object p1, Lcom/billy/android/swipe/SmartSwipeBack;->activitySwipeBackListener:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 1

    const/16 v0, 0x14

    .line 169
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v0

    .line 170
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;I)V

    return-void
.end method

.method public static activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;I)V
    .locals 9

    const/16 v0, 0x1e

    .line 174
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v5

    const/16 v0, 0xc8

    .line 175
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v4

    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 177
    invoke-static/range {v1 .. v8}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIII)V

    return-void
.end method

.method public static activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIII)V
    .locals 8

    .line 182
    new-instance v7, Lcom/billy/android/swipe/SmartSwipeBack$3;

    move-object v0, v7

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/billy/android/swipe/SmartSwipeBack$3;-><init>(IIIIII)V

    invoke-static {p0, v7, p1}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public static activityDoorBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 7

    const/16 v0, 0x14

    .line 211
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v4

    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 214
    invoke-static/range {v1 .. v6}, Lcom/billy/android/swipe/SmartSwipeBack;->activityDoorBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIZ)V

    return-void
.end method

.method public static activityDoorBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIZ)V
    .locals 1

    .line 219
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeBack$4;

    invoke-direct {v0, p5, p4, p2, p3}, Lcom/billy/android/swipe/SmartSwipeBack$4;-><init>(ZIII)V

    invoke-static {p0, v0, p1}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public static activityShuttersBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 7

    const/16 v0, 0x14

    .line 245
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v4

    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 248
    invoke-static/range {v1 .. v6}, Lcom/billy/android/swipe/SmartSwipeBack;->activityShuttersBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIZ)V

    return-void
.end method

.method public static activityShuttersBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIZ)V
    .locals 1

    .line 253
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeBack$5;

    invoke-direct {v0, p5, p4, p2, p3}, Lcom/billy/android/swipe/SmartSwipeBack$5;-><init>(ZIII)V

    invoke-static {p0, v0, p1}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public static activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 118
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeBack;->activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;F)V

    return-void
.end method

.method public static activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;F)V
    .locals 9

    const/16 v0, 0x14

    .line 123
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v3

    const/16 v0, 0xa

    .line 125
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v6

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    .line 127
    invoke-static/range {v1 .. v8}, Lcom/billy/android/swipe/SmartSwipeBack;->activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIFI)V

    return-void
.end method

.method public static activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIFI)V
    .locals 8

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 p3, 0x0

    .line 136
    invoke-static {p0, p1, p2, p3, p7}, Lcom/billy/android/swipe/SmartSwipeBack;->activityStayBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;III)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v7, Lcom/billy/android/swipe/SmartSwipeBack$2;

    move-object v0, v7

    move v1, p6

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/billy/android/swipe/SmartSwipeBack$2;-><init>(FIIIII)V

    invoke-static {p0, v7, p1}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    :goto_0
    return-void
.end method

.method public static activityStayBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 3

    const/16 v0, 0x14

    .line 85
    invoke-static {v0, p0}, Lcom/billy/android/swipe/SmartSwipe;->dp2px(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-static {p0, p1, v0, v1, v2}, Lcom/billy/android/swipe/SmartSwipeBack;->activityStayBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;III)V

    return-void
.end method

.method public static activityStayBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;III)V
    .locals 1

    .line 90
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeBack$1;

    invoke-direct {v0, p3, p2, p4}, Lcom/billy/android/swipe/SmartSwipeBack$1;-><init>(III)V

    invoke-static {p0, v0, p1}, Lcom/billy/android/swipe/SmartSwipeBack;->activityBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V

    return-void
.end method

.method public static findPreviousActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .line 311
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->mPreviousFinder:Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p0}, Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;->findPreviousActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 315
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_1

    .line 317
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->ACTIVITIES:Ljava/util/ArrayList;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setPreviousFinder(Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;)V
    .locals 0

    .line 324
    sput-object p0, Lcom/billy/android/swipe/SmartSwipeBack;->mPreviousFinder:Lcom/billy/android/swipe/SmartSwipeBack$IPreviousFinder;

    return-void
.end method
