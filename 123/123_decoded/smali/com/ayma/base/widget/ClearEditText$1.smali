.class Lcom/ayma/base/widget/ClearEditText$1;
.super Ljava/lang/Object;
.source "ClearEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/base/widget/ClearEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/base/widget/ClearEditText;


# direct methods
.method constructor <init>(Lcom/ayma/base/widget/ClearEditText;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/base/widget/ClearEditText$1;->this$0:Lcom/ayma/base/widget/ClearEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 64
    iget-object p2, p0, Lcom/ayma/base/widget/ClearEditText$1;->this$0:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/ayma/base/widget/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p2, p0, Lcom/ayma/base/widget/ClearEditText$1;->this$0:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2, p1}, Lcom/ayma/base/widget/ClearEditText;->setClearIconVisible(Z)V

    :goto_0
    return-void
.end method
