.class public final synthetic Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field public final synthetic f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$0:Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$2:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/-$$Lambda$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter$3E2yUIzDRysMDrmh2uEz_YYFELE;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter;->lambda$onBindViewHolder$0$ReceiptSelectGoodsActivity$ReceiptSelectGoodsAdapter(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILandroid/view/View;)V

    return-void
.end method
