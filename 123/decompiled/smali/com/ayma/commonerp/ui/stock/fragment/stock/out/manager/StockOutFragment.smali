.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "StockOutFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/IStockOutContact$IStockOutView;"
    }
.end annotation


# static fields
.field private static final SELECT_DAY_END:I = 0x2

.field private static final SELECT_DAY_OUT:I = 0x0

.field private static final SELECT_DAY_START:I = 0x1


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

.field private endDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field etBillNo:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803c9
    .end annotation
.end field

.field etOutTrain:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ca
    .end annotation
.end field

.field private isSelectTrain:Z

.field private isUploadSuccess:Z

.field private itemOptionPopup:Landroid/widget/PopupWindow;

.field private outDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field rv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803cb
    .end annotation
.end field

.field private selectTrainPopup:Landroid/widget/PopupWindow;

.field private volatile shouldUpdataList:Z

.field spReceiptStatue:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803cd
    .end annotation
.end field

.field spReceiptType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ce
    .end annotation
.end field

.field spStock:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803cf
    .end annotation
.end field

.field spStockType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d0
    .end annotation
.end field

.field private startDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field private storePosition:I

.field private storeTypePosition:I

.field private trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

.field tvEndDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d5
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d6
    .end annotation
.end field

.field tvOutDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d7
    .end annotation
.end field

.field tvQuery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803d8
    .end annotation
.end field

.field tvStartDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803dc
    .end annotation
.end field

.field private typeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->isUploadSuccess:Z

    .line 233
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->shouldUpdataList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->isSelectTrain:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->isSelectTrain:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->shouldUpdataList:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->storePosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->storePosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public getDataSuccess()V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b007a

    return v0
.end method

.method public getStockOutReceipt(ZZ)V
    .locals 13

    .line 334
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStock:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStockType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptStatue:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvOutDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 340
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvStartDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvEndDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etBillNo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    move v11, p1

    move v12, p2

    invoke-virtual/range {v1 .. v12}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->getStockOutReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;
    .locals 2

    .line 109
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->initView(Landroid/view/View;)V

    const-string p1, "\u65b0\u589e"

    .line 145
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showRightBtnText(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etBillNo:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 182
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutPresenter;->onCreate()V

    .line 224
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;

    const-string v1, "StockOutReceipt"

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$0$StockOutFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;Landroid/view/View;)V
    .locals 0

    .line 527
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 528
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$1$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILandroid/view/View;)V
    .locals 8

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 533
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "\u662f\u5426\u8981\u5220\u9664\u5355\u636e\uff1a%s \uff1f"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;

    invoke-direct {v7, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    const-string v2, "\u63d0\u793a"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    const-string v6, "\u5220\u9664"

    move-object v1, p0

    .line 532
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$2$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 551
    iget-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$3$StockOutFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;Landroid/view/View;)V
    .locals 0

    .line 566
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 567
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$4$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 572
    iget-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreOutId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$5$StockOutFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;ILandroid/view/View;)V
    .locals 8

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 579
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "\u662f\u5426\u8981\u5220\u9664\u5355\u636e\uff1a%s \uff1f"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$9;

    invoke-direct {v7, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    const-string v2, "\u63d0\u793a"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    const-string v6, "\u5220\u9664"

    move-object v1, p0

    .line 578
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$6$StockOutFragment(Landroid/view/View;)V
    .locals 0

    .line 593
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyItemChange(I)V
    .locals 0

    .line 386
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 390
    invoke-virtual {p0, p1, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    return-void
.end method

.method public notifyItemInsert(I)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    return-void
.end method

.method public notifyListChange(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    .line 362
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 363
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 364
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->notifyDataSetChanged()V

    .line 368
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 369
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvNoData:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public notifyListItemChange(I)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    return-void
.end method

.method public notifyListItemRemove(I)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    return-void
.end method

.method public notifyTypeChange()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->typeAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 493
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStockType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 261
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onDestroyView()V

    .line 262
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-string v1, "StockOutReceipt"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onResume()V

    .line 238
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->shouldUpdataList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    :cond_0
    return-void
.end method

.method public onRightClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 310
    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections;->actionStockOutFragmentToStockOutEditFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public onTvEndDayClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803d5
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvEndDay:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectDay(Landroid/widget/TextView;I)V

    return-void
.end method

.method public onTvOutDayClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803d7
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvOutDay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectDay(Landroid/widget/TextView;I)V

    return-void
.end method

.method public onTvQueryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803d8
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 277
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etBillNo:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->hideSoftKeyboard(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 278
    invoke-virtual {p0, p1, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getStockOutReceipt(ZZ)V

    return-void
.end method

.method public onTvStartDayClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803dc
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->tvStartDay:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectDay(Landroid/widget/TextView;I)V

    return-void
.end method

.method public rightClick()V
    .locals 0

    return-void
.end method

.method public selectDay(Landroid/widget/TextView;I)V
    .locals 6

    .line 418
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const-string p1, "\u4e0d\u652f\u6301\u7684\u64cd\u4f5c"

    .line 431
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->endDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    goto :goto_0

    .line 425
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->startDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    goto :goto_0

    .line 422
    :cond_2
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->outDayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    .line 434
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "yyyy-MM-dd"

    if-eqz v2, :cond_3

    .line 435
    invoke-static {v3}, Lcom/ayma/base/util/DateTimeUtils;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez p2, :cond_4

    .line 438
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdd()Ljava/lang/String;

    .line 439
    new-instance p2, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$6;

    invoke-direct {v4, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Landroid/widget/TextView;)V

    const-string p1, "2000-01-01 00:00"

    const-string v5, "2099-12-31 00:00"

    invoke-direct {p2, v2, v4, p1, v5}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 456
    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 458
    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 460
    :cond_4
    invoke-static {v0, v3, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showOutStockTye(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 323
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;I)V
    .locals 9

    .line 499
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 501
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080732

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 507
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0807a7

    .line 508
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 509
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f080733

    .line 510
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 511
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0807a8

    .line 512
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 513
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f080731

    .line 514
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 515
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0807a5

    .line 516
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 518
    invoke-static {p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections;->actionStockOutFragmentToStockOutEditFragment(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;

    move-result-object v2

    const-string v7, "0"

    .line 521
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 522
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 524
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$UBNgoYRTz1V5vS-ngisVlni-WSc;

    invoke-direct {v7, p0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$UBNgoYRTz1V5vS-ngisVlni-WSc;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$NP4RDOo5yQ2_2KTmTRV59bJhV2g;

    invoke-direct {v7, p0, p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$NP4RDOo5yQ2_2KTmTRV59bJhV2g;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v7, "1"

    .line 548
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 549
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;

    invoke-direct {v7, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$jTtqHoeE3-Llr7p9wk0pcx4TQL8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v7, "2"

    .line 557
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 558
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 560
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$mTUAYuTzq7LIUUbwNlA_0tjC7RI;

    invoke-direct {v3, p0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$mTUAYuTzq7LIUUbwNlA_0tjC7RI;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragmentDirections$ActionStockOutFragmentToStockOutEditFragment;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$bbhHvAhYyINW5-_dacuANGnGd3A;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$bbhHvAhYyINW5-_dacuANGnGd3A;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;

    invoke-direct {p2, p0, p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$iM3_lVFM6rLpKTcgh1_QZwTMFLs;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;I)V

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    :cond_3
    new-instance p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$k8gM1UrywXQnjMGxxCdpuGHY8pI;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/-$$Lambda$StockOutFragment$k8gM1UrywXQnjMGxxCdpuGHY8pI;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 597
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 598
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 599
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/16 p3, 0x51

    invoke-virtual {p2, p1, p3, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showReceiptStatue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 329
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spReceiptStatue:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public showStoreData(Ljava/util/List;Ljava/util/List;)V
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

    .line 465
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 466
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStock:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 467
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStock:Landroid/widget/Spinner;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 483
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->typeAdapter:Landroid/widget/ArrayAdapter;

    .line 484
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->spStockType:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

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

    .line 610
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 612
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v3, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f08062e

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 618
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    if-nez v1, :cond_1

    .line 619
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    .line 621
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->trainListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$TrainListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 622
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 623
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->selectTrainPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
