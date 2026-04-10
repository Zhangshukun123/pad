.class public Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "ScrappedActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedContact$IScrappedView;"
    }
.end annotation


# instance fields
.field addTvColumn4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080066
    .end annotation
.end field

.field btnDeleteAll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005a
    .end annotation
.end field

.field btnSelectGoods:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005b
    .end annotation
.end field

.field private listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

.field private receiptTypePosition:I

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005f
    .end annotation
.end field

.field private scrappedRemark:Ljava/lang/String;

.field private scrappedTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spReceiptType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080056
    .end annotation
.end field

.field spScrappedType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080057
    .end annotation
.end field

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080061
    .end annotation
.end field

.field tvAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080062
    .end annotation
.end field

.field tvScrappedTypeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080058
    .end annotation
.end field

.field tvTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080068
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080069
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->receiptTypePosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->receiptTypePosition:I

    return p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0035

    return v0
.end method

.method public init()V
    .locals 1

    const-string v0, "\u63d0\u4ea4"

    .line 115
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showRightBtnText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;
    .locals 2

    .line 495
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initReceiptType(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 186
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    .line 154
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initScrappedType(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 175
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public synthetic lambda$showInputScrappedRemarkDialog$0$ScrappedActivity(Lcom/ayma/base/widget/ClearEditText;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 2

    .line 315
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 316
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u8bf7\u8f93\u5165\u62a5\u5e9f\u539f\u56e0"

    .line 317
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 321
    :cond_0
    invoke-interface {p4}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x96

    if-le p1, v0, :cond_1

    const-string p1, "\u62a5\u5e9f\u539f\u56e0\u957f\u5ea6\u4e0d\u5f97\u8d85\u8fc7150\u5b57"

    .line 322
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    .line 326
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "\u8bf7\u9009\u62e9"

    .line 327
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u5355\u636e\u7c7b\u578b"

    .line 328
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_2
    iget-object p4, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p4, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->prepareCommitData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showInputScrappedRemarkDialog$1$ScrappedActivity(Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 336
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public notifyListDataChange()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyScrappedTypeChange()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 357
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->hideInfoDetailPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 361
    new-instance v5, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$4;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$5;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u5f53\u524d\u5217\u8868\u4e2d\u5b58\u5728\u672a\u63d0\u4ea4\u7684\u6570\u636e\uff0c\n\u786e\u5b9a\u9000\u51fa\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 378
    :cond_1
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnCommitClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->hideSoftKeyboard()V

    .line 389
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    const-string v0, "\u8bf7\u7a0d\u540e\u518d\u8bd5"

    if-nez p1, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 394
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 401
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8bf7\u9009\u62e9"

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "\u8bf7\u9009\u62e9\u5355\u636e\u7c7b\u578b"

    .line 403
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "\u8f66\u73ed\u4e22\u5931"

    .line 407
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 408
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->prepareCommitData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    if-nez p1, :cond_5

    const-string p1, "\u62a5\u5e9f\u7c7b\u578b\u9009\u62e9\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u5f53\u524d\u9875\u9762\u91cd\u8bd5"

    .line 412
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 415
    :cond_5
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "\u62a5\u5e9f\u7c7b\u578b\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    .line 416
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 419
    :cond_6
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "\u8bf7\u9009\u62e9\u62a5\u5e9f\u7c7b\u578b"

    .line 422
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_7
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showInputScrappedRemarkDialog(Ljava/lang/String;)V

    return-void

    .line 398
    :cond_8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onBtnDeleteAllClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08005a
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->hideSoftKeyboard()V

    .line 452
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->listDataAdapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u5f53\u524d\u5217\u8868\u4e3a\u7a7a"

    .line 453
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    new-instance v4, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$6;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$7;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\u5217\u8868\u6240\u6709\u6570\u636e\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnSelectGoodsClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08005b
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->hideSoftKeyboard()V

    .line 437
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u8bf7\u5148\u9009\u62e9\u5355\u636e\u7c7b\u578b"

    .line 438
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->openSelectGoodsPage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->onCreate(Landroid/content/Intent;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080063
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080064
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080067
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080065
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f080063

    .line 500
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080064

    .line 501
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080065

    .line 502
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080067

    .line 503
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 507
    :cond_0
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

    .line 508
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 509
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showCountAndTotalPrice(DLjava/lang/Double;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvTotalPrice:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showInputScrappedRemarkDialog(Ljava/lang/String;)V
    .locals 8

    .line 271
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0068

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08072b

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080363

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    const v4, 0x7f0802a9

    .line 275
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0802aa

    .line 276
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 277
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u62a5\u5e9f\u539f\u56e0(150\u5b57\u5185)"

    .line 278
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 280
    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "\u62a5\u5e9f\u539f\u56e0(150\u5b57\u5185)-%d\u5b57"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x96

    if-le v6, v7, :cond_1

    .line 282
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const v7, 0x7f0501a0

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const v7, 0x7f050038

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    :goto_0
    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->scrappedRemark:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 289
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 293
    new-instance v3, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    new-instance v1, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$MknTWFcLEP5Bq1lvAIgRsMJ5iz0;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$MknTWFcLEP5Bq1lvAIgRsMJ5iz0;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Lcom/ayma/base/widget/ClearEditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance p1, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$8bGLZ69vHs1LidqKX1dgVuPm_g4;

    invoke-direct {p1, p0, v2, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/-$$Lambda$ScrappedActivity$8bGLZ69vHs1LidqKX1dgVuPm_g4;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 343
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_2
    return-void
.end method

.method public toSelectGoodsPage(Ljava/lang/String;)V
    .locals 8

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const-string v2, ""

    const-string v3, ""

    const-string v4, "scrapped"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
