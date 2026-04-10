.class public final synthetic Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/ayma/base/widget/ClearEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$2:I

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$3:Lcom/ayma/base/widget/ClearEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$1:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$2:I

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$jQVHj3-aNoPn3VTib8pwqb8aUmM;->f$3:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->lambda$showEditCount$4$ReplenishmentQuotWarehouseActivity(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/view/View;)V

    return-void
.end method
