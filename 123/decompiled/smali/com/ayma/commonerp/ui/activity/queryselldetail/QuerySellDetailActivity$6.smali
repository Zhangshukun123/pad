.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;
.super Ljava/lang/Object;
.source "QuerySellDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->showGoodsNamePopup(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 381
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 382
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->access$402(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Z)Z

    .line 383
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->val$data:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 385
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->access$500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
