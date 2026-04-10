.class public Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QueryBillActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

.field private view7f0800e6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    .line 34
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0800ed

    const-string v2, "field \'spBigType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    .line 35
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0800ef

    const-string v2, "field \'spSmallType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080119

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvNoData:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800ea

    const-string v2, "field \'clTable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0800eb

    const-string v2, "field \'etGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->etGoodsName:Landroid/widget/EditText;

    .line 39
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0800ec

    const-string v2, "field \'rvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080118

    const-string v2, "field \'tvInCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInCount:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080117

    const-string v2, "field \'tvInAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInAmount:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08011c

    const-string v2, "field \'tvReturnAndDamageCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageCount:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08011b

    const-string v2, "field \'tvReturnAndDamageAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageAmount:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08011f

    const-string v2, "field \'tvSaleCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleCount:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08011e

    const-string v2, "field \'tvSaleAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleAmount:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800fb

    const-string v2, "field \'tvFromStockCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockCount:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800fa

    const-string v2, "field \'tvFromStockAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockAmount:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800f7

    const-string v2, "field \'tvAddCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddCount:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800f6

    const-string v2, "field \'tvAddAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddAmount:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080103

    const-string v2, "field \'tvReturnCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnCount:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080102

    const-string v2, "field \'tvReturnAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAmount:Landroid/widget/TextView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08010e

    const-string v2, "field \'tvScrappedCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedCount:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08010d

    const-string v2, "field \'tvScrappedAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedAmount:Landroid/widget/TextView;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800fd

    const-string v2, "field \'tvLostCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostCount:Landroid/widget/TextView;

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800fc

    const-string v2, "field \'tvLostAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostAmount:Landroid/widget/TextView;

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08010c

    const-string v2, "field \'tvSaleOutCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutCount:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08010b

    const-string v2, "field \'tvSaleOutAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutAmount:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080109

    const-string v2, "field \'tvSaleInCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInCount:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080108

    const-string v2, "field \'tvSaleInAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInAmount:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080106

    const-string v2, "field \'tvSale12306Count\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Count:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080105

    const-string v2, "field \'tvSale12306Amount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Amount:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080112

    const-string v2, "field \'tvTransferInCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInCount:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080111

    const-string v2, "field \'tvTransferInAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInAmount:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080115

    const-string v2, "field \'tvTransferOutCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutCount:Landroid/widget/TextView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080114

    const-string v2, "field \'tvTransferOutAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutAmount:Landroid/widget/TextView;

    .line 66
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800f1

    const-string v2, "field \'tvAllAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAllAmount:Landroid/widget/TextView;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800f2

    const-string v2, "field \'tvAllCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAllCount:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0800ee

    const-string v2, "field \'spSaleType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSaleType:Landroid/widget/Spinner;

    const v0, 0x7f0800e6

    const-string v1, "method \'onBtnQueryClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 70
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    .line 86
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    .line 87
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    .line 88
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvNoData:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 90
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->etGoodsName:Landroid/widget/EditText;

    .line 91
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInCount:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInAmount:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageCount:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageAmount:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleCount:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleAmount:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockCount:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockAmount:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddCount:Landroid/widget/TextView;

    .line 101
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddAmount:Landroid/widget/TextView;

    .line 102
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnCount:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAmount:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedCount:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedAmount:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostCount:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostAmount:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutCount:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutAmount:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInCount:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInAmount:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Count:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Amount:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInCount:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInAmount:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutCount:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutAmount:Landroid/widget/TextView;

    .line 118
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAllAmount:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAllCount:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSaleType:Landroid/widget/Spinner;

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
