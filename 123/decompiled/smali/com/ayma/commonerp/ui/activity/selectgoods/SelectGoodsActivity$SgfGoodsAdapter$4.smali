.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->val$holder:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 675
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->this$1:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;->val$holder:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V

    return-void
.end method
