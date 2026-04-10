.class public Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryWarehouseActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;",
        "Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseContact$IQueryWarehouseView;"
    }
.end annotation


# instance fields
.field private bigTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bigTypeName:Ljava/lang/String;

.field btQuery:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b1
    .end annotation
.end field

.field etWarename:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b3
    .end annotation
.end field

.field private listAdapter:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b4
    .end annotation
.end field

.field private smallTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private smallTypeName:Ljava/lang/String;

.field spinnerWarebigtype:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b5
    .end annotation
.end field

.field spinnerWaresmalltype:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b6
    .end annotation
.end field

.field tvTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b8
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801b9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->smallTypeName:Ljava/lang/String;

    return-object p1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b002f

    return v0
.end method

.method public init()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;
    .locals 2

    .line 112
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 225
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 226
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->listAdapter:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

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

    .line 154
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 155
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 156
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWarebigtype:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWarebigtype:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWarebigtype:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeName:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->smallTypeName:Ljava/lang/String;

    return-void
.end method

.method public notifyBigTypeChange()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyListChange()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->listAdapter:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifySmallTypeChange()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onBtnQueryClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801b1
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->etWarename:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->bigTypeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->spinnerWaresmalltype:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->queryWarehouse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTvGoodsAmountClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080561
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

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
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08055d
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08055e
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080560
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08055f
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehousePresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08055d

    .line 233
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08055e

    .line 234
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08055f

    .line 235
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080560

    .line 236
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080561

    .line 237
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 242
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

    .line 243
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 244
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showTotalCountAndPrice(DLjava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->tvTotalPrice:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
