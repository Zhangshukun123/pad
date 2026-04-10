.class Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;
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


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$700(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 487
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$9;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->showGoodsDetailPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    return-void
.end method
