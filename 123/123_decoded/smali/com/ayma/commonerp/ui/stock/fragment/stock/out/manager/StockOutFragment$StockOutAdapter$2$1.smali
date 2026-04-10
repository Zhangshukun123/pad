.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2$1;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 717
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2$1;->this$2:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->revokeOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    return-void
.end method
