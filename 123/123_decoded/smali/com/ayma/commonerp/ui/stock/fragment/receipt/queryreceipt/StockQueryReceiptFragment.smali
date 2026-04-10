.class public Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "StockQueryReceiptFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact$IStockQueryReceiptView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact$IStockQueryReceiptView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptContact$IStockQueryReceiptView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

.field private date:Ljava/lang/String;

.field etTrain:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080415
    .end annotation
.end field

.field private isSelectTrain:Z

.field rvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080416
    .end annotation
.end field

.field private selectTrainMemberPopup:Landroid/widget/PopupWindow;

.field private selectTrainPopup:Landroid/widget/PopupWindow;

.field spReceiptStatue:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080417
    .end annotation
.end field

.field spReceiptType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080418
    .end annotation
.end field

.field spStoreType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080419
    .end annotation
.end field

.field private storeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08041a
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08041c
    .end annotation
.end field

.field tvSignOut:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08041d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->isSelectTrain:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->isSelectTrain:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->setSignOutBtnText()V

    return-void
.end method

.method static synthetic lambda$onTvDateClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showSelectDateDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 500
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private setSignOutBtnText()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvSignOut:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "\u7ed9%s %s\u9000\u4e58"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvSignOut:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .line 527
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->navigateBack()V

    return-void
.end method

.method public finishActivity()V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v5, 0x0

    .line 190
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$4;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    const-string v2, ""

    const-string v3, "\u5373\u5c06\u9000\u51fa\u5f53\u524d\u9875\u9762\uff0c\u8bf7\u786e\u8ba4"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->navigateBack()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b007c

    return v0
.end method

.method public initList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptBean;",
            ">;)V"
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    .line 290
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 291
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;
    .locals 2

    .line 92
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->initView(Landroid/view/View;)V

    .line 121
    new-instance p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$1;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    const-string v0, "\u67e5\u8be2"

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 143
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public synthetic lambda$onTvDateClick$0$StockQueryReceiptFragment(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 251
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 252
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 253
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$onTvDateClick$1$StockQueryReceiptFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvDate:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->setSignOutBtnText()V

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$5$StockQueryReceiptFragment(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 488
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 489
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 490
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$6$StockQueryReceiptFragment(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 495
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p1, :cond_0

    .line 497
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showTrainMembers$3$StockQueryReceiptFragment(Landroid/view/View;)V
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showTrainMembers$4$StockQueryReceiptFragment(Landroid/view/View;)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyDateItemRemoved(I)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->removeDateItem(I)V

    return-void
.end method

.method public notifyListChange()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->notifyDataSetChanged()V

    .line 353
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public notifyListItemChange(I)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onBackPress()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->finishActivity()V

    return v1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    .line 108
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    .line 109
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-string v1, "receiptOption"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 110
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onResume()V

    return-void
.end method

.method public onTvDateClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08041a
        }
    .end annotation

    .line 237
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0060

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080304

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 241
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 242
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 243
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 244
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "yyyyMMdd"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 246
    invoke-virtual {v6, v3, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 247
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    .line 249
    new-instance v5, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pwe4MDvlfO3hd0Ipzo7F6qL27eg;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pwe4MDvlfO3hd0Ipzo7F6qL27eg;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 256
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$cg1sL-XYZ3KzhJPO_BUaDk7wPZs;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$cg1sL-XYZ3KzhJPO_BUaDk7wPZs;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$kMQeipAGqKlihWTV-scEzxaDH18;->INSTANCE:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$kMQeipAGqKlihWTV-scEzxaDH18;

    const-string v2, "\u53d6\u6d88"

    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->stockMainActivity:Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/activity/main/StockMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 264
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public onTvSignOutClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08041d
        }
    .end annotation

    .line 275
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u8981\u9000\u4e58\u7684\u8f66\u6b21"

    .line 276
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;->queryAllNoCommitReceipt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rightClick()V
    .locals 12

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u51fa\u4e58\u65e5\u671f"

    .line 206
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 216
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spReceiptStatue:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spStoreType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p0, v5}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 231
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v6, v5

    check-cast v6, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptPresenter;->fetchTrainReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "\u8bf7\u9009\u62e9\u8981\u67e5\u8be2\u7684\u5355\u636e\u72b6\u6001"

    .line 222
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string v0, "\u8bf7\u9009\u62e9\u8981\u67e5\u8be2\u7684\u5355\u636e\u7c7b\u578b"

    .line 217
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    const-string v0, "\u8bf7\u8f93\u5165\u8981\u67e5\u8be2\u7684\u51fa\u4e58\u8f66\u6b21"

    .line 211
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showTipsOnTop(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void
.end method

.method public setSignOutEnable(Z)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->tvSignOut:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showReceiptTypeAndStatue(Ljava/util/List;Ljava/util/List;)V
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

    .line 302
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 303
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 305
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 306
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spReceiptStatue:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public showSelectDateDialog(Landroid/widget/TextView;)V
    .locals 9

    .line 474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0060

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080304

    .line 476
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 478
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 479
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 480
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 481
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "yyyyMMdd"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 483
    invoke-virtual {v7, v4, v5, v3}, Ljava/util/Calendar;->set(III)V

    .line 484
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->date:Ljava/lang/String;

    .line 486
    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$idhHwsjxkHMOX96YIMuv4RyyIH0;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$idhHwsjxkHMOX96YIMuv4RyyIH0;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$pA6vqk_q2GTtwPrQ5Dz7heHLOI0;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Landroid/widget/TextView;)V

    const-string p1, "\u786e\u5b9a"

    .line 494
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$i0w7rjfq2-3aHZm-Yg11A6BDhhg;->INSTANCE:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$i0w7rjfq2-3aHZm-Yg11A6BDhhg;

    const-string v2, "\u53d6\u6d88"

    .line 500
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public showStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->storeAdapter:Landroid/widget/ArrayAdapter;

    .line 312
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->spStoreType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public showTrainList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    const v1, 0x7f0b0102

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v3, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f08062e

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 332
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;

    if-nez v1, :cond_1

    .line 333
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$TrainListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 336
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 337
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 338
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->etTrain:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showTrainMembers(Lcom/ayma/commonerp/bean/StockTrainItem;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/StockTrainItem;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TrainMemberBean;",
            ">;)V"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 442
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080723

    .line 446
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$42t0rNmO9W3BMfzk8Nc2hLuLlaE;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$42t0rNmO9W3BMfzk8Nc2hLuLlaE;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0807a5

    .line 447
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$71e9Pzq6Qym0vuVxiiabSEzTpw0;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/-$$Lambda$StockQueryReceiptFragment$71e9Pzq6Qym0vuVxiiabSEzTpw0;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08078d

    .line 448
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080619

    .line 456
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 457
    new-instance v2, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 458
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 459
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Lcom/ayma/commonerp/bean/StockTrainItem;Ljava/util/List;Landroid/widget/TextView;)V

    .line 460
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 461
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 462
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 463
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 464
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x51

    invoke-virtual {p2, p1, v0, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public signOutSuccess()V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->selectTrainMemberPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public toReceiptDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 377
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "ReceiptOption"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 397
    invoke-static {p1, p2, p3, p4}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragmentDirections;->actionStockQueryReceiptFragmentToStockReceiptDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragmentDirections$ActionStockQueryReceiptFragmentToStockReceiptDetail;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public updateStores()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->storeAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
