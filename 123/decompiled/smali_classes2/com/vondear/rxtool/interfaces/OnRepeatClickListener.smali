.class public abstract Lcom/vondear/rxtool/interfaces/OnRepeatClickListener;
.super Ljava/lang/Object;
.source "OnRepeatClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MIN_CLICK_DELAY_TIME:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 18
    iput v0, p0, Lcom/vondear/rxtool/interfaces/OnRepeatClickListener;->MIN_CLICK_DELAY_TIME:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 24
    invoke-static {v0}, Lcom/vondear/rxtool/RxTool;->isFastClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/vondear/rxtool/interfaces/OnRepeatClickListener;->onRepeatClick(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "\u8bf7\u4e0d\u8981\u91cd\u590d\u70b9\u51fb"

    .line 27
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->normal(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onRepeatClick(Landroid/view/View;)V
.end method
