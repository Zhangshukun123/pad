.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17$1;
.super Ljava/lang/Object;
.source "StockInEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 972
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->checkCommitReceipt()V

    return-void
.end method
