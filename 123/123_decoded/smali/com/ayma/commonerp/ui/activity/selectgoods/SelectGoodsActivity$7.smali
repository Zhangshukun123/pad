.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showSelectedGoodsPopup(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

.field final synthetic val$goodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;->val$goodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->clearAllSelectedGoods()V

    .line 245
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;->val$goodsAdapter:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;->notifyDataSetChanged()V

    .line 246
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$200(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
