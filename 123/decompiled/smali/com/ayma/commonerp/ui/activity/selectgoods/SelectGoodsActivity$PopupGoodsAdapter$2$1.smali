.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 767
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 769
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsPresenter;->removeSelected(ILcom/ayma/commonerp/bean/SellDetailBean;)V

    .line 770
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$PopupGoodsAdapter;->notifyItemChanged(I)V

    return-void
.end method
