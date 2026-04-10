.class final Lcom/vondear/rxtool/RxTool$2;
.super Landroid/os/CountDownTimer;
.source "RxTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxTool;->countDown(Landroid/widget/TextView;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hint:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(JJLandroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p5, p0, Lcom/vondear/rxtool/RxTool$2;->val$textView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/vondear/rxtool/RxTool$2;->val$hint:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/vondear/rxtool/RxTool$2;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/vondear/rxtool/RxTool$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vondear/rxtool/RxTool$2;->val$hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/vondear/rxtool/RxTool$2;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "\u5269\u4e0b %d S"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
