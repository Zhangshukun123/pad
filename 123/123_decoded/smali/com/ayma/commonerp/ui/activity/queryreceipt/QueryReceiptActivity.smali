.class public Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryReceiptActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;,
        Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;",
        "Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptContact$IQueryReceiptView;"
    }
.end annotation


# instance fields
.field btnQuery:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080132
    .end annotation
.end field

.field private receiptDetailPopup:Landroid/widget/PopupWindow;

.field private receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

.field private receiptStatueAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptStatueStr:Ljava/lang/String;

.field private receiptTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiptTypeStr:Ljava/lang/String;

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080133
    .end annotation
.end field

.field spEtcStatue:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080134
    .end annotation
.end field

.field spEtcType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080135
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080136
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptTypeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptStatueStr:Ljava/lang/String;

    return-object p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0028

    return v0
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;
    .locals 2

    .line 97
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    .line 136
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 140
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    const v0, 0x1090009

    invoke-direct {p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 103
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptStatueAdapter:Landroid/widget/ArrayAdapter;

    .line 105
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcStatue:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptStatueAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcType:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcStatue:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcType:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptTypeStr:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->spEtcStatue:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptStatueStr:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$showDetail$0$QueryReceiptActivity(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyDataChange()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->notifyDataSetChanged()V

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyListRemoved(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->notifyItemRemoved(I)V

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptListAdapter:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v5, 0x0

    .line 215
    new-instance v7, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$3;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u662f\u5426\u9000\u51fa\u5f53\u524d\u9875\u9762\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u9000\u51fa"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 229
    :cond_1
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnQueryClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080132
        }
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptTypeStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptStatueStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->queryEtcData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showDetail(Lcom/ayma/commonerp/bean/QueryReceiptBean;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$RZ4syDg3TI6rSYapgIQ112emNZ4;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$RZ4syDg3TI6rSYapgIQ112emNZ4;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080791

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getBillNo()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\u5355\u636e\u7f16\u53f7\uff1a%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08072e

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getBillDay()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "\u5236\u5355\u65e5\u671f\uff1a%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08079e

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getCreateShowName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "\u5236\u5355\u4eba\u5458\uff1a%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080755

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getHandover()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p1, 0x8

    .line 174
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const-string p1, "\u4ea4\u63a5\u81f3\uff1a%s"

    .line 177
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    move-wide v6, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;

    .line 182
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getQty()D

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v3

    .line 183
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/QueryReceiptDetailBean;->getSalesPriceTotal()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/ayma/base/util/ArithUtil;->add(DD)D

    move-result-wide v6

    goto :goto_2

    :cond_2
    const p1, 0x7f08072d

    .line 185
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "\u5546\u54c1\u603b\u6570\uff1a%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080775

    .line 186
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "\u5546\u54c1\u603b\u4ef7\uff1a%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080616

    .line 187
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 189
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 190
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptDetailAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/util/List;)V

    .line 191
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 193
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 194
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->receiptDetailPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x51

    invoke-virtual {p2, p1, v0, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
