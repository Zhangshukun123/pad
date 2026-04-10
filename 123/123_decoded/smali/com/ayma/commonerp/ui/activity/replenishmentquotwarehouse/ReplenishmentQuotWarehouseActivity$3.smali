.class Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;
.super Ljava/lang/Object;
.source "ReplenishmentQuotWarehouseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onItemSelected$0$ReplenishmentQuotWarehouseActivity$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->spType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$500(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$onItemSelected$1$ReplenishmentQuotWarehouseActivity$3(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 274
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 275
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p2, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$502(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;I)I

    .line 276
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p3, p2, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->spType:Landroid/widget/Spinner;

    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$402(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehousePresenter;->clearAllGoods()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 268
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$400(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u8bf7\u9009\u62e9"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$100(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$100(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$500(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$3$cYVPywgci9NNS71HnuhV5FPBmyA;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$3$cYVPywgci9NNS71HnuhV5FPBmyA;-><init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$3$BJ1HCLjs-y2z-0B-npJEOWk-jBk;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/-$$Lambda$ReplenishmentQuotWarehouseActivity$3$BJ1HCLjs-y2z-0B-npJEOWk-jBk;-><init>(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;I)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u4e0d\u80fd\u540c\u65f6\u5bf9\u591a\u4e2a\u5e93\u522b\u8fdb\u884c\u5546\u54c1\u64cd\u4f5c\uff0c\u5373\u5c06\u6e05\u7a7a\u5f53\u524d\u5546\u54c1\u5217\u8868\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    invoke-static {p1, p3}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$502(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;I)I

    .line 282
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->spType:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->access$402(Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
