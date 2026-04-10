.class final Lcom/vondear/rxtool/RxTool$5;
.super Ljava/lang/Object;
.source "RxTool.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxtool/RxTool;->setEditNumberAuto(Landroid/widget/EditText;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$isStartForZero:Z

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;IZ)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/vondear/rxtool/RxTool$5;->val$editText:Landroid/widget/EditText;

    iput p2, p0, Lcom/vondear/rxtool/RxTool$5;->val$number:I

    iput-boolean p3, p0, Lcom/vondear/rxtool/RxTool$5;->val$isStartForZero:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 309
    iget-object p1, p0, Lcom/vondear/rxtool/RxTool$5;->val$editText:Landroid/widget/EditText;

    iget p2, p0, Lcom/vondear/rxtool/RxTool$5;->val$number:I

    iget-boolean v0, p0, Lcom/vondear/rxtool/RxTool$5;->val$isStartForZero:Z

    invoke-static {p1, p2, v0}, Lcom/vondear/rxtool/RxTool;->setEditNumber(Landroid/widget/EditText;IZ)V

    :cond_0
    return-void
.end method
