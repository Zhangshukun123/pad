.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "InvoicingActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingDetailAdapter;,
        Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingContact$IInvoicingView;"
    }
.end annotation


# instance fields
.field private endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field etOrderCode:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080075
    .end annotation
.end field

.field private invoicingAdapter:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

.field ivScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080076
    .end annotation
.end field

.field llFilterContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080077
    .end annotation
.end field

.field rbEarly:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080078
    .end annotation
.end field

.field rbNewest:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080079
    .end annotation
.end field

.field rgSortDate:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08007a
    .end annotation
.end field

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08007b
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field spOrderType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08007c
    .end annotation
.end field

.field spPayType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08007d
    .end annotation
.end field

.field private startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field tvEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080081
    .end annotation
.end field

.field tvInvoicing:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080082
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080083
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field tvStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080086
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->isResume:Z

    return p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dealScanResult(Ljava/lang/String;)V
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const-string p1, "\u6d41\u6c34\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    .line 383
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showToast(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 387
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 388
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 390
    invoke-static {p1}, Lcom/ayma/commonerp/util/RegexUtil;->verifyOrderNum(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u8ba2\u5355\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u8bf7\u91cd\u65b0\u626b\u7801"

    .line 391
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->generateInvoicingQrCode()V

    return-void
.end method

.method public generateInvoicingQrCode()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u626b\u63cf\u5ba2\u6237\u652f\u4ed8\u6d41\u6c34\u53f7"

    .line 401
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showToast(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->generateInvoicingQrCode(Ljava/lang/String;)V

    return-void
.end method

.method public generateInvoicingQrCode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-static {p0, p1, v0, v0}, Lcom/ayma/commonerp/util/ShowInvoicingQrCodeUtil;->showInvoicingQrCode(Lcom/ayma/commonerp/base/BaseActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0020

    return v0
.end method

.method public init()V
    .locals 2

    .line 129
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    const-string v1, "\u67e5\u8be2"

    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rgSortDate:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public initFilterDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;
    .locals 2

    .line 124
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    .line 321
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 322
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 323
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 324
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 325
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public initSpinner(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 331
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 332
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spPayType:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 333
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spOrderType:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public notifyListDataChanged()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 269
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 275
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->dealScanResult(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->registerReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->unregisterReceiver()V

    .line 168
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onIvScanClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080076
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 184
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 185
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onTvEndTimeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080081
        }
    .end annotation

    .line 236
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yyyy-MM-dd\nHH:mm"

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {p1, v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 253
    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 255
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 257
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 259
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public onTvInvoicingClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080082
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->generateInvoicingQrCode()V

    return-void
.end method

.method public onTvStartTimeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080086
        }
    .end annotation

    const-string p1, "yyyy-MM-dd HH:mm"

    .line 208
    invoke-static {p1}, Lcom/ayma/base/util/DateTimeUtils;->parseDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v1, v2, p1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$4;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 218
    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 220
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 222
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 224
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public refundApplySuccess()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$7;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showFilterAndSortIsNot(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rgSortDate:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rgSortDate:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    .line 367
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->destroy()V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    :cond_0
    return-void
.end method
