.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyListItemChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;I)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    iput p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 569
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->val$position:I

    if-ltz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 571
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    iget v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
