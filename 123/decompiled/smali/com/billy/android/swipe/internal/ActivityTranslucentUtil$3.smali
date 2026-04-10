.class final Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$3;
.super Ljava/lang/Object;
.source "ActivityTranslucentUtil.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent(Landroid/app/Activity;Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$3;->val$callback:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 144
    array-length p2, p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 145
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$3;->val$callback:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;

    invoke-static {p2, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->access$200(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;Z)V

    const/4 p1, 0x0

    return-object p1
.end method
