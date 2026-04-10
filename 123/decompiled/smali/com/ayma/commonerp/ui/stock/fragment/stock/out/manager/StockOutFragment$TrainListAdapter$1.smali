.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 869
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 870
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 872
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$102(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Z)Z

    .line 873
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 875
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->hideSoftKeyboard()V

    return-void
.end method
