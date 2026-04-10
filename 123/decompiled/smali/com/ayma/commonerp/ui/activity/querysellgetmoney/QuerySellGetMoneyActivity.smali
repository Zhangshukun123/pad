.class public Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QuerySellGetMoneyActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;",
        "Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyContact$IQuerySellGetMoneyView;"
    }
.end annotation


# instance fields
.field btnQueryUnusualOrder:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08017e
    .end annotation
.end field

.field btnRegetData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080194
    .end annotation
.end field

.field clDiscountAmount:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0802d1
    .end annotation
.end field

.field tv12306SaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08017f
    .end annotation
.end field

.field tvAlipayGet:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080195
    .end annotation
.end field

.field tvAlipaySaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080180
    .end annotation
.end field

.field tvCashGet:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080181
    .end annotation
.end field

.field tvCashSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080182
    .end annotation
.end field

.field tvCashToAlipay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080196
    .end annotation
.end field

.field tvCashToOnline:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080183
    .end annotation
.end field

.field tvCashToWechat:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080197
    .end annotation
.end field

.field tvChengwucan:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080198
    .end annotation
.end field

.field tvCodeSale:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080184
    .end annotation
.end field

.field tvCwzaoSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080186
    .end annotation
.end field

.field tvCwzhengSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080187
    .end annotation
.end field

.field tvDiscountAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080188
    .end annotation
.end field

.field tvJiedaiSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080189
    .end annotation
.end field

.field tvLost:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080199
    .end annotation
.end field

.field tvNormalSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018b
    .end annotation
.end field

.field tvOnlineSaleAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018c
    .end annotation
.end field

.field tvScrapped:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018d
    .end annotation
.end field

.field tvScrappedLostToOnline:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08019a
    .end annotation
.end field

.field tvTotalSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018e
    .end annotation
.end field

.field tvTuancanSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08018f
    .end annotation
.end field

.field tvVipSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080190
    .end annotation
.end field

.field tvWaijuSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080191
    .end annotation
.end field

.field tvWechatGet:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080192
    .end annotation
.end field

.field tvWechatSaleMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080193
    .end annotation
.end field

.field tvWork:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08019b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b002c

    return v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u67e5\u8be2"

    .line 192
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->cb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;
    .locals 2

    .line 127
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "\u60a8\u5df2\u53d6\u6d88\u4ed8\u6b3e"

    .line 324
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->getSaleMoneyData(Z)V

    .line 329
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBtnQueryUnusualOrderClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08017e
        }
    .end annotation

    .line 135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public onBtnReGetDataClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->getSaleMoneyData(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyPresenter;->onDestroy()V

    return-void
.end method

.method public onTvLostScrappedToOnlineClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08018a
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u5148\u67e5\u8be2\u6536\u6b3e\u6570\u636e"

    .line 179
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrappedLostToOnline:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    const-string p1, "\u5f53\u524d\u65e0\u53ef\u8f6c\u7ebf\u4e0a\u7684\u91d1\u989d"

    .line 184
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "\u62a5\u5e9f\u4e22\u5931"

    const-string v2, "2"

    .line 187
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showEditToOnlineMoney(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onlinePay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payMoney"

    .line 313
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payMode"

    const-string v1, "toOnline"

    .line 314
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "toOnlineType"

    .line 315
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x6e

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showEditToOnlineMoney(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 10

    .line 265
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0063

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08072b

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08035e

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    const v4, 0x7f0802a9

    .line 268
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0802aa

    .line 269
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/widget/Button;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 270
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "%s\u8f6c\u7ebf\u4e0a--\u5f53\u524d\u6700\u591a\u53ef\u8f6c%s\u5143"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 273
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 276
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;

    invoke-direct {v0, p0, v8}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v9, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;

    move-object v0, v9

    move-object v1, p0

    move-wide v3, p3

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Lcom/ayma/base/widget/ClearEditText;DLjava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 306
    invoke-virtual {p0, v8}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public showGetMoneyData(Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;)V
    .locals 12

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTotalSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getTotalSales()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvNormalSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getZhengChangXiaoShou()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWaijuSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getWaiJu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvTuancanSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getTuanCan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvVipSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getVip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvJiedaiSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getJieDai()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzaoSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getChengWuZaoCan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCwzhengSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getChengWuZhengCan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tv12306SaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getAmount12306()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getXianJin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatSaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getWeiChat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipaySaleMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getZhiFuBao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getXianjinReceipt()Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getWeichatReceipt()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWechatGet:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getZhifubaoReceipt()Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvAlipayGet:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getZhifubaoOnline()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToAlipay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getWeichatOnline()Ljava/lang/String;

    move-result-object v3

    .line 238
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashToWechat:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrapped:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getBaofei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvLost:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getDiushi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getScrapLostXianjinReceipt()Ljava/lang/String;

    move-result-object v4

    .line 244
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvScrappedLostToOnline:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvChengwucan:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getChengWuCan()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvWork:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getGongZuoCan()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getGuiTai()Ljava/lang/String;

    move-result-object v5

    .line 248
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCodeSale:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getPrefrentialAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getPrefrentialAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->clDiscountAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 253
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvDiscountAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->getPrefrentialAmount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->clDiscountAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 255
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvOnlineSaleAmount:Landroid/widget/TextView;

    .line 256
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 257
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 258
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 259
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 260
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v4

    .line 259
    invoke-static {v2, v3, v4, v5}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    .line 258
    invoke-static {v8, v9, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v2

    .line 257
    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    .line 256
    invoke-static {v6, v7, v0, v1}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v0

    .line 255
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public tvCashToOnlineClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080183
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u5148\u67e5\u8be2\u6536\u6b3e\u6570\u636e"

    .line 154
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->tvCashGet:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    const-string p1, "\u5f53\u524d\u65e0\u53ef\u8f6c\u7ebf\u4e0a\u7684\u73b0\u91d1\u6536\u6b3e"

    .line 159
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "\u73b0\u91d1"

    const-string v2, "1"

    .line 170
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showEditToOnlineMoney(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method
