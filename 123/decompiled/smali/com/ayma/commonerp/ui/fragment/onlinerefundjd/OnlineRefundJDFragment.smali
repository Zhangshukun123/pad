.class public Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;
.super Lcom/ayma/commonerp/base/BaseFragment;
.source "OnlineRefundJDFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseFragment<",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDContact$IOnlineRefundJDView;"
    }
.end annotation


# instance fields
.field clTime:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08037e
    .end annotation
.end field

.field private endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field private jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

.field rgSort:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080381
    .end annotation
.end field

.field rvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080382
    .end annotation
.end field

.field private startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field tvEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080384
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080385
    .end annotation
.end field

.field tvQuery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080386
    .end annotation
.end field

.field tvStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080387
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0070

    return v0
.end method

.method public initFilterDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->initPresenter()Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;
    .locals 2

    .line 64
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;-><init>(Landroid/content/Context;)V

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

    .line 213
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    .line 214
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initRv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    .line 175
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 177
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseFragment;->initView(Landroid/view/View;)V

    .line 80
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 81
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->onCreate()V

    .line 82
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rgSort:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->loadData()V

    return-void
.end method

.method public notifyDataItemChange(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyListDataChanged()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBackPress()Z
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->jdOrderAdapter:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v5, 0x0

    .line 237
    new-instance v7, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$4;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$4;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u662f\u5426\u9000\u51fa\u5f53\u524d\u9875\u9762\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u9000\u51fa"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseFragment;->onBackPress()Z

    move-result v0

    return v0
.end method

.method public onTvEndTimeClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080384
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {p1, v0, v0}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v1, v2, v0}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$3;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$3;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 161
    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 163
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 165
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 167
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->endDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public onTvQueryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080386
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDPresenter;->queryJDOrder()V

    return-void
.end method

.method public onTvStartTimeClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080387
        }
    .end annotation

    const-string p1, "yyyy-MM-dd HH:mm"

    .line 116
    invoke-static {p1}, Lcom/ayma/base/util/DateTimeUtils;->parseDateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v1, v2, p1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$2;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$2;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 126
    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 128
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 130
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 132
    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->startDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public showFilterAndSortIsNot(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->clTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rgSort:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->clTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->rgSort:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
