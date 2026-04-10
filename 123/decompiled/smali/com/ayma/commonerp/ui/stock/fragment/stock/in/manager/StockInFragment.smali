.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "StockInFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/IStockInContact$IStockInView;"
    }
.end annotation


# static fields
.field private static final SELECT_END_DATE:I = 0x1

.field private static final SELECT_START_DATE:I


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

.field private endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field etReceiptNo:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08038f
    .end annotation
.end field

.field private itemOptionPopup:Landroid/widget/PopupWindow;

.field rv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080390
    .end annotation
.end field

.field private volatile shouldUpdateList:Z

.field spPostMark:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080391
    .end annotation
.end field

.field spStore:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080392
    .end annotation
.end field

.field spStoreModel:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080393
    .end annotation
.end field

.field spSupplier:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080394
    .end annotation
.end field

.field private startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field private storeTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tvEndDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080395
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080397
    .end annotation
.end field

.field tvQuery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080399
    .end annotation
.end field

.field tvStartDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08039b
    .end annotation
.end field

.field tvTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->shouldUpdateList:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->shouldUpdateList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0077

    return v0
.end method

.method public getStockInReceiptData(Z)V
    .locals 10

    .line 211
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spSupplier:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    .line 216
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStoreModel:Landroid/widget/Spinner;

    .line 217
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    .line 218
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spPostMark:Landroid/widget/Spinner;

    .line 220
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spSupplier:Landroid/widget/Spinner;

    .line 221
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->etReceiptNo:Landroid/widget/EditText;

    .line 222
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move v9, p1

    .line 215
    invoke-virtual/range {v1 .. v9}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;->queryStockInReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u9875\u9762\u521d\u59cb\u5316\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    .line 212
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;
    .locals 2

    .line 86
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->initView(Landroid/view/View;)V

    const-string p1, "\u65b0\u589e"

    .line 102
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showRightBtnText(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdd()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 122
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object p1

    const-class v0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    const-string v1, "StockInReceipt"

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$0$StockInFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;Landroid/view/View;)V
    .locals 0

    .line 325
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 329
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$1$StockInFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;ILandroid/view/View;)V
    .locals 8

    .line 334
    invoke-virtual {p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "\u662f\u5426\u8981\u5220\u9664\u5355\u636e\uff1a%s \uff1f"

    .line 339
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$5;

    invoke-direct {v7, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    const-string v2, "\u63d0\u793a"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u5220\u9664"

    move-object v1, p0

    .line 338
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$2$StockInFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;Landroid/view/View;)V
    .locals 0

    .line 356
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 360
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$3$StockInFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;ILandroid/view/View;)V
    .locals 8

    .line 371
    invoke-virtual {p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "\u662f\u5426\u8981\u5220\u9664\u5355\u636e\uff1a%s \uff1f"

    .line 376
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;

    invoke-direct {v7, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    const-string v2, "\u63d0\u793a"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u5220\u9664"

    move-object v1, p0

    .line 375
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showPopupSelectDialog$4$StockInFragment(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 393
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rootView:Landroid/view/View;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public notifyItemChange(I)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->notifyItemChanged(I)V

    .line 479
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->getItemCount()I

    move-result p1

    .line 480
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u5171%s\u6761\u8bb0\u5f55"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :goto_0
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmssSSS()Ljava/lang/String;

    move-result-object p1

    const-string v0, "notifyItemChange"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyItemInsert(I)V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->notifyItemInserted(I)V

    .line 463
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->getItemCount()I

    move-result p1

    .line 464
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u5171%s\u6761\u8bb0\u5f55"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :goto_0
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmssSSS()Ljava/lang/String;

    move-result-object p1

    const-string v0, "notifyItemInsert"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyItemRemove(I)V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->removeData(I)V

    .line 496
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->getItemCount()I

    move-result p1

    .line 497
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u5171%s\u6761\u8bb0\u5f55"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 499
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :goto_0
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMddHHmmssSSS()Ljava/lang/String;

    move-result-object p1

    const-string v0, "notifyItemRemove"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyListChange(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    .line 230
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 231
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 232
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->notifyDataSetChanged()V

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->getItemCount()I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvTip:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "\u5171%s\u6761\u8bb0\u5f55"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvNoData:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onDestroyView()V

    .line 148
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-string v1, "StockInReceipt"

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onResume()V

    .line 139
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->shouldUpdateList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getStockInReceiptData(Z)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->shouldUpdateList:Z

    :cond_0
    return-void
.end method

.method public onTvEndDateLongClick(Landroid/view/View;)Z
    .locals 1
    .annotation runtime Lbutterknife/OnLongClick;
        value = {
            0x7f080395
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTvQueryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080399
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getStockInReceiptData(Z)V

    return-void
.end method

.method public onTvRightClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 171
    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections;->actionStockInFragmentToStockInEditFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public onTvStartDateLongClick(Landroid/view/View;)Z
    .locals 1
    .annotation runtime Lbutterknife/OnLongClick;
        value = {
            0x7f08039b
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public selectDate(Landroid/widget/TextView;I)V
    .locals 5

    .line 252
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const-string p1, "\u4e0d\u652f\u6301\u64cd\u4f5c"

    .line 262
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    goto :goto_0

    .line 256
    :cond_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    .line 265
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdd()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 269
    new-instance p2, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Landroid/widget/TextView;)V

    const-string p1, "2000-01-01 00:00"

    const-string v4, "2099-12-31 00:00"

    invoke-direct {p2, v2, v3, p1, v4}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 282
    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 283
    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 285
    :cond_3
    invoke-virtual {p2, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public selectEndDate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080395
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvEndDate:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->selectDate(Landroid/widget/TextView;I)V

    return-void
.end method

.method public selectStartDate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08039b
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->tvStartDate:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->selectDate(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showPopupSelectDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V
    .locals 8

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080732

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 304
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0807a7

    .line 305
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 306
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080733

    .line 307
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 308
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0807a8

    .line 309
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080731

    .line 311
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 312
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0807a5

    .line 313
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$4;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections;->actionStockInFragmentToStockInEditFragment(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v2

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$G8YagTd7WO068ocfQy3xyqUvhF0;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$t75585PZmMomxuwpkvBI0zcCfEA;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$t75585PZmMomxuwpkvBI0zcCfEA;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v2

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$icnLay2bEk-hNIWu3LqakcqdmdA;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$icnLay2bEk-hNIWu3LqakcqdmdA;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_2
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$EO5085AvD9BIj0m3m8P7_1o51VM;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    new-instance p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$niyqHROSZdv10yyIirFomrEWqDI;

    invoke-direct {p1, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/-$$Lambda$StockInFragment$niyqHROSZdv10yyIirFomrEWqDI;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragmentDirections$ActionStockInFragmentToStockInEditFragment;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 399
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 400
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x51

    invoke-virtual {p2, p1, v0, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showPostMark(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 453
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 454
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spPostMark:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public showStore(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 410
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 411
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 412
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStore:Landroid/widget/Spinner;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public showStoreModel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->storeTypeAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->storeTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 434
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public showSupplier(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 448
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->spSupplier:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public uploadSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getStockInReceiptData(Z)V

    return-void
.end method
