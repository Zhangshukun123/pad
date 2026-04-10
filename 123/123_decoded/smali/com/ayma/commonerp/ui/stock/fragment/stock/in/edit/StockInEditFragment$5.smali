.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;
.super Ljava/lang/Object;
.source "StockInEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 235
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$302(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Z)Z

    return-void

    .line 259
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->searchSuppierList(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 249
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->searchSuppierList(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
