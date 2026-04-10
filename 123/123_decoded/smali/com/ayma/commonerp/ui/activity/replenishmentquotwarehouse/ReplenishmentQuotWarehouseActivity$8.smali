.class Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehouseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 475
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$1$ReplenishmentQuotWarehouseActivity$8(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 477
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$100(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->removeDataByPosition(I)V

    .line 478
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->calculateAmount()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 472
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$700(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 473
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u8981\u5220\u9664  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 474
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \uff1f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$8$Kb8CCIQSyq-q9JIekH0m32SHFOg;->INSTANCE:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$8$Kb8CCIQSyq-q9JIekH0m32SHFOg;

    iget p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;->val$position:I

    new-instance v6, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$8$lAY0UinAeX3aEBFw2qnHcasw9g8;

    invoke-direct {v6, p0, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$8$lAY0UinAeX3aEBFw2qnHcasw9g8;-><init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$8;I)V

    const-string v1, "\u6ce8\u610f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    .line 473
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
