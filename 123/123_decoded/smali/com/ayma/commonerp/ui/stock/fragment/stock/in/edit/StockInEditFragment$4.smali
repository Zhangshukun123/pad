.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;
.super Ljava/lang/Object;
.source "StockInEditFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->searchSuppierList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
