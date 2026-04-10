.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;
.super Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;
.source "OffSiteAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->initRlv(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->val$list:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$bindData$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 257
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 8

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V

    .line 231
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    .line 232
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v1

    const-string v2, "\n\u6570\u91cf\uff1a"

    const-string v3, "\u662f\u5426\u5220\u9664 "

    if-eqz v1, :cond_1

    .line 237
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v4, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v4, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v6, v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const v7, 0x7f0501d1

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n\u603b\u4ef7\uff1a"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    const-string v4, "\u5f02\u5e38"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v4, v4, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const v5, 0x7f050021

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n\u603b\u4ef7\uff1a\u5f02\u5e38"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_1
    iget-object v2, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->tvOutDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getGoDateNonePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$xwMKlWVYlR5FxDBH9LvS1y34wRA;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;Ljava/lang/String;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 227
    check-cast p2, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    return-void
.end method

.method public synthetic lambda$bindData$1$OffSiteAddActivity$2(ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 259
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->removeDataByPosition(I)V

    .line 261
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->deleteGoods(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    return-void
.end method

.method public synthetic lambda$bindData$2$OffSiteAddActivity$2(Ljava/lang/String;ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/view/View;)Z
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    sget-object v4, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$U_ycVQRolx5Seqt6je5p2XWvCoo;->INSTANCE:Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$U_ycVQRolx5Seqt6je5p2XWvCoo;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$5hUWYPl-wYcYipxutvWVZ20yze4;

    invoke-direct {v6, p0, p2, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$2$5hUWYPl-wYcYipxutvWVZ20yze4;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setItemCount()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
