.class public Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryOrderActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$OrderDetailAdapter;,
        Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;"
    }
.end annotation


# instance fields
.field btnRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field private endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080122
    .end annotation
.end field

.field private invoicingAdapter:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

.field llFilterContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080123
    .end annotation
.end field

.field rbEarly:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080124
    .end annotation
.end field

.field rbNewest:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080125
    .end annotation
.end field

.field rgSortDate:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080126
    .end annotation
.end field

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080127
    .end annotation
.end field

.field spOrderType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080128
    .end annotation
.end field

.field spPayType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080129
    .end annotation
.end field

.field private startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field toolBar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08070b
    .end annotation
.end field

.field tvEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08012d
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08012e
    .end annotation
.end field

.field tvStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080131
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0027

    return v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u67e5\u8be2"

    .line 106
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rgSortDate:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public initFilterDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;
    .locals 2

    .line 101
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;-><init>(Landroid/content/Context;)V

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

    .line 248
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    .line 249
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->invoicingAdapter:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$InvoicingAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 252
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 253
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->context:Landroid/content/Context;

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

    .line 258
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 259
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 260
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spPayType:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 261
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spOrderType:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public notifyListDataChanged()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onTvEndTimeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08012d
        }
    .end annotation

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yyyy-MM-dd\nHH:mm"

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {p1, v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$4;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 200
    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 202
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 204
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 206
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public onTvQueryAllOrderClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->hideSoftKeyboard()V

    .line 145
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spPayType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->spOrderType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->etOrderTrainName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->queryAllOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTvStartTimeClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080131
        }
    .end annotation

    const-string p1, "yyyy-MM-dd HH:mm"

    .line 155
    invoke-static {p1}, Lcom/ayma/base/util/DateTimeUtils;->parseDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getNowDate()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lcom/ayma/base/util/DateTimeUtils;->getSpecifiedDayBeforeN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2, p1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$3;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;)V

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 165
    invoke-virtual {v2, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 167
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 169
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 171
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\nHH:mm"

    invoke-static {v1, v2, p1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showFilterAndSortIsNot(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rgSortDate:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->rgSortDate:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
