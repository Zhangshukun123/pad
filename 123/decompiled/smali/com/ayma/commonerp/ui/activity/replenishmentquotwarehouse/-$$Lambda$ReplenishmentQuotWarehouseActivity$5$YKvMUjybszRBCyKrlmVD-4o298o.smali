.class public final synthetic Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$5;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$5;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$5;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$5;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$5$YKvMUjybszRBCyKrlmVD-4o298o;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$5;->lambda$bindData$3$ReplenishmentQuotWarehouseActivity$5(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
