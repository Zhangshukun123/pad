.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->lambda$showPopupSelectDialog$1(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

.field final synthetic val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iput p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 538
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->val$data:Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    iget v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->val$position:I

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->deleteOutReceipt(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    .line 539
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
