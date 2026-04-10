.class public Lcom/vondear/rxtool/RxPermissionsTool;
.super Ljava/lang/Object;
.source "RxPermissionsTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/RxPermissionsTool$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/vondear/rxtool/RxPermissionsTool$Builder;
    .locals 1

    .line 21
    new-instance v0, Lcom/vondear/rxtool/RxPermissionsTool$Builder;

    invoke-direct {v0, p0}, Lcom/vondear/rxtool/RxPermissionsTool$Builder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
