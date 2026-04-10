.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 776
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->val$bean:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;->val$holder:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->prepareUploadReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    return-void
.end method
