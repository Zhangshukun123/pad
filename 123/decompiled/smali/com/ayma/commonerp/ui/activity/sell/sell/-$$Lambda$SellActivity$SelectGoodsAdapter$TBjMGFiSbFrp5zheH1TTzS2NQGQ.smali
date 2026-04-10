.class public final synthetic Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->lambda$onBindViewHolder$0$SellActivity$SelectGoodsAdapter(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Landroid/view/View;)V

    return-void
.end method
