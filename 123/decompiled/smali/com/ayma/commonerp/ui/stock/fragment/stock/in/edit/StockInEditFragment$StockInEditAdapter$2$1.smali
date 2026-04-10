.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2$1;
.super Ljava/lang/Object;
.source "StockInEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1074
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->delGoodsItem(I)V

    return-void
.end method
