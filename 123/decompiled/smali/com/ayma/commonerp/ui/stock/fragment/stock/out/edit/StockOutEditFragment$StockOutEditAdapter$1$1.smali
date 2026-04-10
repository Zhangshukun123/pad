.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1$1;
.super Ljava/lang/Object;
.source "StockOutEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1260
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$StockOutEditAdapter$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->delItem(I)V

    return-void
.end method
