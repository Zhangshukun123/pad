.class public Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SellActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;,
        Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;"
    }
.end annotation


# static fields
.field public static final KEY_PAGE_TYPE:Ljava/lang/String; = "pageType"

.field public static final KEY_PRICE_TYPE:Ljava/lang/String; = "priceType"

.field public static final PAY_WAY:Ljava/lang/String; = "\u73b0\u91d1"

.field private static final REQUEST_SELECT_GOODS:I = 0xde

.field public static final SELL_TYPE_12306:Ljava/lang/String; = "12306"

.field public static final SELL_TYPE_SIMPLE:Ljava/lang/String; = "\u6b63\u5e38"

.field public static final SELL_TYPE_VIP:Ljava/lang/String; = "VIP"

.field public static final TYPE_PAY_MESSAGE_COMMON:I = 0x0

.field public static final TYPE_PAY_MESSAGE_ERROR:I = 0x1

.field public static final TYPE_PAY_MESSAGE_OK:I = 0x2


# instance fields
.field btnDeleteAll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080217
    .end annotation
.end field

.field btnOnlineCamera:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080215
    .end annotation
.end field

.field btnOnlinePayment:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080216
    .end annotation
.end field

.field private btnPayDialogClose:Landroid/widget/TextView;

.field private btnPayDialogPay:Landroid/widget/TextView;

.field private btnPayDialogQuery:Landroid/widget/TextView;

.field btnSelectGoods:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080218
    .end annotation
.end field

.field cbUserQuitWare:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080219
    .end annotation
.end field

.field clListHead:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080630
    .end annotation
.end field

.field private etPayDialogPayCode:Landroid/widget/EditText;

.field etScanningCode:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021e
    .end annotation
.end field

.field etSellCount:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021f
    .end annotation
.end field

.field private inputCountDialog:Landroid/app/AlertDialog;

.field private inputCountDialogView:Landroid/view/View;

.field private inputDiscountDialog:Landroid/app/AlertDialog;

.field private inputDiscountDialogView:Landroid/view/View;

.field private inputPayCodeDialog:Landroid/app/AlertDialog;

.field private inputPayCodeView:Landroid/view/View;

.field private isCancel:Z

.field private ivPayDialogScan:Landroid/view/View;

.field llDiscount:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080631
    .end annotation
.end field

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private pageType:Ljava/lang/String;

.field private payPb:Landroid/widget/ProgressBar;

.field private priceType:Ljava/lang/String;

.field private priceTypePosition:I

.field rlvGoods:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080221
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field private selectDropdownPopup:Landroid/widget/PopupWindow;

.field private selectGoodsPopup:Landroid/widget/PopupWindow;

.field private sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

.field spSellType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08024a
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private totalPrice:D

.field tvDiscount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080632
    .end annotation
.end field

.field tvGoodsCodeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080635
    .end annotation
.end field

.field tvGoodsCountHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080636
    .end annotation
.end field

.field tvGoodsNameHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080637
    .end annotation
.end field

.field tvGoodsPriceHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080638
    .end annotation
.end field

.field tvGoodsTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080639
    .end annotation
.end field

.field tvGoodsTypeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08063a
    .end annotation
.end field

.field private tvPayDiscountAmount:Landroid/widget/TextView;

.field private tvPayDiscountAmountHint:Landroid/widget/TextView;

.field private tvPayErrorInfo:Landroid/widget/TextView;

.field private tvPayOrderAmount:Landroid/widget/TextView;

.field private tvPayOrderNo:Landroid/widget/TextView;

.field private tvPayOrderNoHint:Landroid/widget/TextView;

.field private tvPayPayAmount:Landroid/widget/TextView;

.field tvScanTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080248
    .end annotation
.end field

.field tvSellCountTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080249
    .end annotation
.end field

.field tvSellTypeTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08024c
    .end annotation
.end field

.field tvSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const-string v0, "\u6b63\u5e38"

    .line 177
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isCancel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isCancel:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isCancel:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceTypePosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;I)I
    .locals 0

    .line 102
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceTypePosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/EditText;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isResume:Z

    return p0
.end method

.method static synthetic lambda$confirmDeleteGoodsOrNot$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 967
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBackPressed$20(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1574
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBtnDeleteAllClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 319
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBtnOnlineCameraClick$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 389
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBtnOnlinePaymentClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 347
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBtnQuitClick$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 476
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showConfirmGoodsDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 919
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1

    const-string v0, "\u6b63\u5e38"

    .line 189
    invoke-static {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pageType"

    .line 279
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkCommit(D)V
    .locals 9

    .line 1147
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getPermissionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ptxs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;D)V

    const-string p1, "tj"

    const-string p2, "3"

    invoke-virtual {v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    goto :goto_0

    .line 1179
    :cond_0
    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$uzkM14vfxnFhVttpZIGiZfA_dlU;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$uzkM14vfxnFhVttpZIGiZfA_dlU;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    new-instance v8, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$AgiriEeo44bDHfVgpYtYhWcm4u8;

    invoke-direct {v8, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$AgiriEeo44bDHfVgpYtYhWcm4u8;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;D)V

    const-string v3, "\u63d0\u793a"

    const-string v4, "\u5373\u5c06\u63d0\u4ea4\u5f53\u524d\u5546\u54c1\n\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u5b9a"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public commitResult(Z)V
    .locals 0

    return-void
.end method

.method public confirmDeleteGoodsOrNot(ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 7

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u5220\u9664\u5546\u54c1\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u6570\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n\u603b\u4ef7\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-static {p4, p5, p6, p7}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n\u9500\u552e\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$NugTFFkphcNWTWUPBw6sxHgdrRI;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$NugTFFkphcNWTWUPBw6sxHgdrRI;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$qn_newcY0BeVJmPzLkY_qAETss0;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$qn_newcY0BeVJmPzLkY_qAETss0;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;ILjava/lang/String;)V

    const-string v4, "\u63d0\u793a"

    const-string v5, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object p1, p0

    move-object p2, v4

    move-object p3, v0

    move-object p4, v5

    move-object p5, v1

    move-object p6, v6

    move-object p7, v2

    .line 965
    invoke-virtual/range {p1 .. p7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public dealScanResult(Ljava/lang/String;)V
    .locals 9

    .line 871
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5546\u54c1\u9009\u62e9\u518d\u626b\u63cf"

    .line 875
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 880
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u9500\u552e\u6570\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    .line 881
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 882
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    const-string p1, "\u9500\u552e\u6570\u91cf\u4e0d\u80fd\u5c0f\u4e8e1"

    .line 886
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 890
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v7, "\u73b0\u91d1"

    invoke-virtual/range {v1 .. v8}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->searchGoods(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public dismissPayDialog()V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b003a

    return v0
.end method

.method public getPayWay()Ljava/lang/String;
    .locals 1

    const-string v0, "\u73b0\u91d1"

    return-object v0
.end method

.method public getPermissionCode()Ljava/lang/String;
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x14bfd

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0xd5f35

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u6b63\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "VIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    const-string v0, "dnxs"

    return-object v0

    :cond_4
    const-string v0, "ptxs"

    return-object v0
.end method

.method public getPriceType()Ljava/lang/String;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnStatue()Z
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public hidePayLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1473
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isLoading:Z

    .line 1474
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 8

    const-string v0, "\u63d0\u4ea4"

    .line 679
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 710
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 712
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 729
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageType"

    .line 730
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    .line 731
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u6b63\u5e38"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const/4 v2, -0x1

    .line 732
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x14bfd

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_3

    const v4, 0xd5f35

    if-eq v3, v4, :cond_2

    const v1, 0x2c9ffb8

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "12306"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "VIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    .line 750
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 751
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 746
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlinePayment:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnOnlineCamera:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;
    .locals 2

    .line 640
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 819
    new-instance v0, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 820
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 821
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    .line 822
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 823
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initSellTypeSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 778
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 779
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 780
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 812
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 813
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic lambda$checkCommit$16$SellActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1182
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$checkCommit$17$SellActivity(DLandroid/content/DialogInterface;I)V
    .locals 1

    .line 1185
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 1186
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1187
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const-string p4, "\u73b0\u91d1"

    const-string v0, "C"

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitSellRecord(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public synthetic lambda$confirmDeleteGoodsOrNot$11$SellActivity(ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 969
    iget-object p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    invoke-virtual {p4, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->removeData(I)V

    .line 970
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteGoods(Ljava/lang/String;)V

    .line 971
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onBackPressed$21$SellActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1576
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1577
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onBtnDeleteAllClick$1$SellActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 321
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onBtnQuitClick$5$SellActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 478
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 479
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showConfirmGoodsDialog$9$SellActivity(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 921
    iget-object p7, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p7

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitGoodsChange(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-interface {p6}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showConfirmReturnClearList$6$SellActivity(ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 576
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p2, 0x1

    .line 577
    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isCancel:Z

    .line 578
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic lambda$showConfirmReturnClearList$7$SellActivity(ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 581
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 582
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 583
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->deleteAllGoods()V

    return-void
.end method

.method public synthetic lambda$showInputCountDialog$14$SellActivity(Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/SellDetailBean;ILandroid/view/View;)V
    .locals 4

    .line 1108
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 1109
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u8bf7\u8f93\u5165\u5546\u54c1\u6570\u91cf"

    .line 1110
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 1114
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1120
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1121
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideSoftKeyboard()V

    .line 1122
    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->setQty(D)V

    .line 1123
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-nez p2, :cond_2

    .line 1127
    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->removeData(I)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->notifyItemChanged(I)V

    .line 1131
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->updateGoodsCount(I)V

    return-void
.end method

.method public synthetic lambda$showInputCountDialog$15$SellActivity(Landroid/view/View;)V
    .locals 0

    .line 1133
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showInputDiscountDialog$18$SellActivity(Lcom/ayma/base/widget/ClearEditText;Landroid/view/View;)V
    .locals 4

    .line 1237
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1240
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 1241
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "\u8bf7\u8f93\u5165\u4f18\u60e0\u91d1\u989d"

    .line 1242
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 1246
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1247
    iget-wide v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    const-string p2, "\u4f18\u60e0\u91d1\u989d\u4e0d\u80fd\u5927\u4e8e\u8ba2\u5355\u91d1\u989d"

    .line 1248
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 1252
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideSoftKeyboard()V

    .line 1253
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showInputDiscountDialog$19$SellActivity(Landroid/view/View;)V
    .locals 0

    .line 1257
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1260
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectGoodsPopup$12$SellActivity(Landroid/view/View;)V
    .locals 0

    .line 1001
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectGoodsPopup$13$SellActivity(Landroid/view/View;)V
    .locals 0

    .line 1002
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataItemChanged(I)V
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1278
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_4

    .line 1591
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 1593
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 1599
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1600
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/EditText;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 1603
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1605
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p2, :cond_5

    const-string p1, "\u60a8\u5df2\u53d6\u6d88\u64cd\u4f5c"

    .line 1609
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideLoading()V

    return-void

    .line 1613
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1567
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8fd8\u6709\u672a\u63d0\u4ea4\u7684\u5546\u54c1\uff0c\u662f\u5426\u9000\u51fa\u5f53\u524d\u9875\u9762\uff1f"

    .line 1573
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$76cVFnopbH-yufPNoUjAMLQLeko;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$76cVFnopbH-yufPNoUjAMLQLeko;

    const-string v2, "\u53d6\u6d88"

    .line 1574
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$_DbBRjYoBO2i86zNAy2iaqleK1U;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$_DbBRjYoBO2i86zNAy2iaqleK1U;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    const-string v2, "\u786e\u5b9a"

    .line 1575
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    return-void

    .line 1584
    :cond_1
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnDeleteAllClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080217
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez p1, :cond_1

    return-void

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u5f53\u524d\u6ca1\u6709\u9009\u62e9\u4efb\u4f55\u5546\u54c1"

    .line 314
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_2
    sget-object v4, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$d5MPYuNAa-tQiBbtExt4tb4Alds;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$d5MPYuNAa-tQiBbtExt4tb4Alds;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$wonD7m2w551DpiSneqHMLt_agnY;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$wonD7m2w551DpiSneqHMLt_agnY;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u5220\u9664\u6240\u6709\u5df2\u9009\u62e9\u7684\u5546\u54c1?"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnOnlineCameraClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080215
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez p1, :cond_1

    return-void

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const-string v0, "\u6b63\u5e38"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const-string v0, "VIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "\u4e0d\u652f\u6301\u7684\u64cd\u4f5c"

    .line 412
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\u8bf7\u5148\u9009\u62e9\u5546\u54c1"

    .line 383
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->canOnlinePay()Z

    move-result p1

    if-nez p1, :cond_5

    .line 387
    sget-object p1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$NXHx8cKjjz48xyxby0uBon7NJOc;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$NXHx8cKjjz48xyxby0uBon7NJOc;

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u5b58\u5728\u9000\u8d27\u5546\u54c1\u65f6\u65e0\u6cd5\u4f7f\u7528\u5728\u7ebf\u652f\u4ed8"

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 392
    :cond_5
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 393
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 395
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 396
    iget-wide v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_6

    const-string p1, "\u7ebf\u4e0a\u652f\u4ed8\u4f18\u60e0\u91d1\u989d\u4e0d\u80fd\u5927\u4e8e\u7b49\u4e8e\u5546\u54c1\u603b\u91d1\u989d"

    .line 397
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 401
    :cond_6
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->openOnlinePay(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 403
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u83b7\u53d6\u4f18\u60e0\u91d1\u989d\u5f02\u5e38\uff1a%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 408
    :cond_7
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->openOnlinePay(ZD)V

    :goto_1
    return-void
.end method

.method public onBtnOnlinePaymentClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080216
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez p1, :cond_1

    return-void

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const-string v0, "\u6b63\u5e38"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const-string v0, "VIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "\u4e0d\u652f\u6301\u7684\u64cd\u4f5c"

    .line 370
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\u8bf7\u5148\u9009\u62e9\u5546\u54c1"

    .line 341
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->canOnlinePay()Z

    move-result p1

    if-nez p1, :cond_5

    .line 345
    sget-object p1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$jAYA7KtoLEaYerIkGOxqPolbpCM;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$jAYA7KtoLEaYerIkGOxqPolbpCM;

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u5b58\u5728\u9000\u8d27\u5546\u54c1\u65f6\u65e0\u6cd5\u4f7f\u7528\u5728\u7ebf\u652f\u4ed8"

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 350
    :cond_5
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 351
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    .line 353
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 354
    iget-wide v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_6

    const-string p1, "\u7ebf\u4e0a\u652f\u4ed8\u4f18\u60e0\u91d1\u989d\u4e0d\u80fd\u5927\u4e8e\u7b49\u4e8e\u5546\u54c1\u603b\u91d1\u989d"

    .line 355
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 359
    :cond_6
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1, v0, v2, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->openOnlinePay(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 361
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "\u83b7\u53d6\u4f18\u60e0\u91d1\u989d\u5f02\u5e38\uff1a%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 366
    :cond_7
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->openOnlinePay(ZD)V

    :goto_1
    return-void
.end method

.method public onBtnQuitClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-nez p1, :cond_1

    return-void

    .line 473
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 474
    sget-object v4, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$K-RZj_eE2V7cQUcQEQFAwn3FvzA;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$K-RZj_eE2V7cQUcQEQFAwn3FvzA;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$yvrKfecRDzGuRfVzdnC1GeD-Ykw;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$yvrKfecRDzGuRfVzdnC1GeD-Ykw;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u8fd8\u6709\u672a\u63d0\u4ea4\u7684\u5546\u54c1\uff0c\u662f\u5426\u79bb\u5f00\u5f53\u524d\u9875\u9762\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u79bb\u5f00"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->finish()V

    return-void
.end method

.method public onBtnSelectGoodsCLick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080218
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showLoading()V

    .line 294
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const-string v1, "pageType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->priceType:Ljava/lang/String;

    const-string v1, "priceType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xde

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onBtnSubmitClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 426
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 430
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 431
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showTipsOnTop(Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 435
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 436
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 437
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 439
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 440
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\u4f18\u60e0\u91d1\u989d\u4e0d\u80fd\u5927\u4e8e\u5546\u54c1\u603b\u91d1\u989d"

    if-eqz p1, :cond_3

    .line 441
    :try_start_1
    iget-wide v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double p1, v2, v5

    if-lez p1, :cond_4

    .line 442
    invoke-virtual {p0, v4}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 447
    :cond_3
    iget-wide v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    cmpl-double p1, v2, v5

    if-lez p1, :cond_4

    .line 448
    invoke-virtual {p0, v4}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 453
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->checkCommit(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 455
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 456
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "\u83b7\u53d6\u4f18\u60e0\u91d1\u989d\u5f02\u5e38\uff1a%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    .line 460
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->checkCommit(D)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 217
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->onCreate(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->checkDevice()V

    .line 220
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->registerReceiver()V

    .line 221
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    .line 222
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    const-string v1, "tj"

    const-string v2, "2"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    .line 252
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    const-string v1, "yhje"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->fetchPdaBtnPermission(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    .line 648
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->destroy()V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 651
    :cond_0
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onTvDiscountClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080633,
            0x7f080632
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return-void

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showInputDiscountDialog()V

    return-void
.end method

.method public onTvGoodsAmountClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080634
        }
    .end annotation

    .line 632
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080635
        }
    .end annotation

    .line 624
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080637
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080638
        }
    .end annotation

    .line 608
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080636
        }
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsTypeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08063a
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvResetDiscountClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08063b
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->llDiscount:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return-void

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDiscount()V

    const-string p1, "\u5df2\u91cd\u7f6e"

    .line 506
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onlinePay(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1016
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "payMode"

    const-string v1, "normal"

    .line 1017
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payJson"

    .line 1018
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payMoney"

    .line 1019
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "goodsCount"

    .line 1020
    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p1, "saleType"

    .line 1021
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    check-cast p2, Ljava/util/ArrayList;

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 p1, 0x6e

    .line 1023
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method public resetDiscount()V
    .locals 2

    .line 1561
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resetReturnCheck()V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f080637

    .line 760
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080636

    .line 761
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080638

    .line 762
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08063a

    .line 763
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080635

    .line 764
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080634

    .line 765
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 769
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 771
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 772
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setCommitBtnEnable(Z)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setPayDialogBtnEnable(Z)V
    .locals 4

    .line 1518
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1522
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1523
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1524
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPayQueryEnable(Z)V
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1535
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1536
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->payPb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public showCommitType(Ljava/util/List;D)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;D)V"
        }
    .end annotation

    .line 1043
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1045
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/PdaPermissionBean;

    .line 1046
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getButtonValueName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getButtonValueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getButtonValueCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1050
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    if-nez p1, :cond_1

    .line 1051
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00fb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1052
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v1, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v4, -0x2

    invoke-direct {v0, p1, v1, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    goto :goto_1

    .line 1054
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    :goto_1
    const v0, 0x7f0805e7

    .line 1056
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 1057
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1059
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const v5, 0x7f0b0107

    invoke-direct {v1, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1060
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 1062
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1063
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1064
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 1066
    :goto_2
    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;Ljava/util/Map;D)V

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1075
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1076
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1077
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    const/high16 p2, 0x42700000    # 60.0f

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1078
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvSubmit:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1079
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectDropdownPopup:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$11;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public showConfirmCashReturnTips(Z)V
    .locals 7

    .line 540
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080306

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f080308

    .line 542
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f080307

    .line 543
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 544
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v3, "\u786e\u5b9a"

    .line 545
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    new-instance v3, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Landroid/app/AlertDialog;Landroid/widget/CheckBox;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    new-instance p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$5;

    invoke-direct {p1, p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 565
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public showConfirmGoodsDialog(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 914
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v1

    move-object v10, p0

    .line 916
    iget-object v3, v10, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u9000\u8d27\u63d0\u793a"

    goto :goto_0

    :cond_0
    const-string v3, "\u63d0\u793a"

    :goto_0
    move-object v11, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u6570\u91cf\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u5355\u4ef7\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\n\u603b\u4ef7\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hhDwHafy31rDkrjxolHKc1ylzdM;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hhDwHafy31rDkrjxolHKc1ylzdM;

    new-instance v12, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;

    move-object v3, v12

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const-string v6, "\u53d6\u6d88"

    const-string v8, "\u786e\u5b9a"

    move-object v3, p0

    move-object v4, v11

    move-object v5, v1

    move-object v7, v2

    move-object v9, v12

    .line 916
    invoke-virtual/range {v3 .. v9}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showConfirmReturnClearList(Z)V
    .locals 8

    .line 572
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->sellAdapter:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SellDetailAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v5, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$-M55EXOLaU58fe_FeAmpzARlLqo;

    invoke-direct {v5, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$-M55EXOLaU58fe_FeAmpzARlLqo;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;

    invoke-direct {v7, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$hruOde21MOBpibZP-xAbKMmqWq0;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)V

    const-string v2, "\u6ce8\u610f"

    const-string v3, "\u6b64\u64cd\u4f5c\u4f1a\u6e05\u7a7a\u5f53\u524d\u5df2\u6709\u7684\u5546\u54c1\u5217\u8868\uff0c\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public showInputCountDialog(Lcom/ayma/commonerp/bean/SellDetailBean;I)V
    .locals 9

    .line 1089
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0066

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    const v2, 0x7f08072b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1093
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    const v3, 0x7f08035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    .line 1095
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    const v4, 0x7f0802a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1096
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    const v5, 0x7f0802aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1097
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1099
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "%s-\u5f53\u524d\u6570\u91cf\uff1a%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 1102
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialogView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1104
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    .line 1107
    :cond_1
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$szG35CnKMjNIEVtXwamG04yAhc4;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$szG35CnKMjNIEVtXwamG04yAhc4;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/SellDetailBean;I)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    new-instance p1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$VeqBtJdeG2KjcXZh79kcR83MwCU;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$VeqBtJdeG2KjcXZh79kcR83MwCU;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1135
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1137
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1138
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1139
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    .line 1140
    invoke-virtual {v2, v8}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 1141
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public showInputDiscountDialog()V
    .locals 11

    .line 1194
    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "\u5f53\u524d\u5546\u54c1\u603b\u91d1\u989d\u4e3a0\uff0c\u65e0\u9700\u7f16\u8f91\u4f18\u60e0"

    .line 1195
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToast(Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const-string v0, "\u5f53\u524d\u5546\u54c1\u603b\u91d1\u989d\u4e3a\u8d1f\u6570\uff0c\u4e0d\u5141\u8bb8\u7f16\u8f91\u4f18\u60e0"

    .line 1199
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToast(Ljava/lang/String;)V

    return-void

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1203
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b005a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    const v4, 0x7f08035d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ayma/base/widget/ClearEditText;

    .line 1206
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    const v5, 0x7f080760

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 1207
    iget-wide v7, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%s\u5143"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    const v6, 0x7f0802a9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1209
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    const v7, 0x7f0802aa

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1211
    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvDiscount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1212
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_3

    .line 1213
    invoke-virtual {v0, v9}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1216
    :cond_3
    :try_start_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v10, v7, v2

    if-nez v10, :cond_4

    .line 1218
    invoke-virtual {v0, v9}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1220
    :cond_4
    invoke-static {v7, v8}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-virtual {v0, v2}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1225
    invoke-virtual {v0, v9}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    :goto_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_5

    .line 1232
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1233
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1234
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    .line 1236
    :cond_5
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$XUlvdm4CbhoX6YeJQ4x95GmkKyE;

    invoke-direct {v1, p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$XUlvdm4CbhoX6YeJQ4x95GmkKyE;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Lcom/ayma/base/widget/ClearEditText;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$Fz4d01Oim09TKeycSmg4GjFL1zg;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$Fz4d01Oim09TKeycSmg4GjFL1zg;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1263
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1265
    :cond_6
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1266
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1267
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputDiscountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    .line 1268
    invoke-virtual {v0, v5}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 1269
    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_7
    return-void
.end method

.method public showInputPayCodeDialog(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZD)V"
        }
    .end annotation

    move-object v8, p0

    move v2, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p12

    .line 1301
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0067

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080673

    .line 1303
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    .line 1304
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08066d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    .line 1305
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08066e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    .line 1306
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08034e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    .line 1307
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080331

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    .line 1308
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080332

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNoHint:Landroid/widget/TextView;

    .line 1309
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08032f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderAmount:Landroid/widget/TextView;

    .line 1310
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08032d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmount:Landroid/widget/TextView;

    .line 1311
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08032e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmountHint:Landroid/widget/TextView;

    .line 1312
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080333

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayPayAmount:Landroid/widget/TextView;

    .line 1313
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080671

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    .line 1314
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f080674

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    .line 1315
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    const v3, 0x7f08032c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->payPb:Landroid/widget/ProgressBar;

    .line 1316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeView:Landroid/view/View;

    .line 1317
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    .line 1320
    :cond_0
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1321
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNoHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1322
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderAmount:Landroid/widget/TextView;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v9}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStr(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v9, 0x0

    cmpl-double v0, v6, v9

    if-nez v0, :cond_1

    .line 1324
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1325
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmountHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1328
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmountHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1329
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayDiscountAmount:Landroid/widget/TextView;

    invoke-static/range {p12 .. p13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v11}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStr(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :goto_0
    invoke-static {v4, v5, v6, v7}, Lcom/ayma/base/util/ArithUtil;->sub(DD)D

    move-result-wide v11

    cmpg-double v0, v4, v9

    if-gtz v0, :cond_2

    const-string v0, "\u7ebf\u4e0a\u652f\u4ed8\u91d1\u989d\u5fc5\u987b\u5927\u4e8e0"

    .line 1333
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showNoticeToastError(Ljava/lang/String;)V

    return-void

    .line 1336
    :cond_2
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayPayAmount:Landroid/widget/TextView;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v9}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStr(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1338
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    move-object v9, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 1340
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1341
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1344
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->payPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1345
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1346
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1348
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1349
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1350
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etPayDialogPayCode:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1352
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1353
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1354
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    new-instance v9, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;

    invoke-direct {v9, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$13;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogQuery:Landroid/widget/TextView;

    new-instance v9, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$14;

    invoke-direct {v9, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$14;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1378
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogClose:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$15;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const-string v1, "\u652f\u4ed8"

    goto :goto_2

    :cond_4
    const-string v1, "\u5173\u95ed"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v9, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->btnPayDialogPay:Landroid/widget/TextView;

    new-instance v10, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object/from16 v3, p8

    move-wide/from16 v4, p5

    move-wide/from16 v6, p12

    invoke-direct/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$16;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;ZLjava/lang/String;DD)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1425
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1426
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1427
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_5
    if-eqz p11, :cond_6

    .line 1430
    iget-object v0, v8, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->ivPayDialogScan:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_6
    return-void
.end method

.method public showPayErrorInfo(ILjava/lang/String;)V
    .locals 4

    .line 1485
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1488
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1493
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1494
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1496
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1497
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0501a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 1499
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1500
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1502
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1503
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1504
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayErrorInfo:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1445
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1446
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 1447
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1448
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;

    invoke-direct {v2, p0, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/lang/String;)V

    const-string p2, "\u5173\u95ed"

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1454
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f1102eb

    .line 1456
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const/4 p2, 0x1

    .line 1459
    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->isLoading:Z

    .line 1460
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1462
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1463
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 1464
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showPayOrderNo(Ljava/lang/String;)V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->inputPayCodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1549
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1550
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1551
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNoHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1554
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvPayOrderNoHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showSelectGoodsPopup(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 997
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 1001
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$nCup_LjtWWzE9M63lfGHcokFp08;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$nCup_LjtWWzE9M63lfGHcokFp08;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080723

    .line 1002
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$VIfqJLBWeygD33luO__ocH7NZy0;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$VIfqJLBWeygD33luO__ocH7NZy0;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080616

    .line 1003
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1004
    new-instance v1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1005
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1006
    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;)V

    .line 1007
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1008
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1009
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 1010
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1011
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showTitle()V
    .locals 7

    .line 657
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageType"

    .line 658
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    .line 659
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u6b63\u5e38"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->pageType:Ljava/lang/String;

    const/4 v2, -0x1

    .line 660
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x14bfd

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0xd5f35

    if-eq v3, v4, :cond_2

    const v1, 0x2c9ffb8

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "12306"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "VIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_1
    const-string v0, "\u6b63\u5e38\u9500\u552e"

    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    .line 671
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->title:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v0, "12306\u9500\u552e"

    .line 668
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->title:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v0, "\u5bf9\u5185\u9500\u552e"

    .line 665
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->title:Ljava/lang/String;

    goto :goto_2

    .line 662
    :cond_7
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->title:Ljava/lang/String;

    .line 674
    :goto_2
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->showTitle()V

    return-void
.end method

.method public showTotalCountAndTotalPrice(DD)V
    .locals 2

    .line 983
    iput-wide p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->totalPrice:D

    .line 984
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "\u5171%s\u4ef6\uff0c\u5408\u8ba1\u91d1\u989d%s\u5143"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    :cond_0
    return-void
.end method
