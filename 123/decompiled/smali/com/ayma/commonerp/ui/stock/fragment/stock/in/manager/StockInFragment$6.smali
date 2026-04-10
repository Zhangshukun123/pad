.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;
.super Ljava/lang/Object;
.source "StockInFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->lambda$showPopupSelectDialog$3(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 381
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 382
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->val$data:Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    iget v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;->val$position:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->deleteLocalReceipt(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;IZ)V

    return-void
.end method
