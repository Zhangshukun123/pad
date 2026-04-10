.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;
.super Ljava/lang/Object;
.source "Sell12306Activity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

.field final synthetic val$head:Lcom/ayma/commonerp/bean/sale12306/OrderHead;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;Lcom/ayma/commonerp/bean/sale12306/OrderHead;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->val$head:Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 258
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->val$head:Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->setSelect(Z)V

    .line 259
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->notifyItemChanged(I)V

    .line 260
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->showDataCount()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
