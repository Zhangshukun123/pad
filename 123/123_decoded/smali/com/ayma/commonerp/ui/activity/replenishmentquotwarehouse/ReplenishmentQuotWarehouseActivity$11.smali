.class Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehouseActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->showEditCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$etCount:Lcom/ayma/base/widget/ClearEditText;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$position:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$etCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget p3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$position:I

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$11;->val$etCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2, p3, v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
