.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;
.super Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;
.source "ScrappedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->initRlv(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter<",
        "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->val$list:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$bindData$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 139
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 4

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V

    .line 124
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    .line 125
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvOutDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getGoDateNonePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$FtkEq79jwWgKOTQNi6uNRHVorkM;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 120
    check-cast p2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    return-void
.end method

.method public synthetic lambda$bindData$1$ScrappedActivity$1(ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 141
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->removeDataByPosition(I)V

    .line 143
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    return-void
.end method

.method public synthetic lambda$bindData$2$ScrappedActivity$1(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILandroid/view/View;)Z
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u5220\u9664 "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u6570\u91cf\uff1a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n\u603b\u4ef7\uff1a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$wpIHiSgj_74p7h5O9oFkWoDIZmk;->INSTANCE:Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$wpIHiSgj_74p7h5O9oFkWoDIZmk;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$3NRAct_p_CGX03rk_Ud5AkCIb04;

    invoke-direct {v6, p0, p3, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$1$3NRAct_p_CGX03rk_Ud5AkCIb04;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setItemCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
