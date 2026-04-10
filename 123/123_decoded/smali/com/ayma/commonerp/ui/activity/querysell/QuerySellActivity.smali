.class public Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QuerySellActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/querysell/QuerySellModelContact$IQueryModelView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
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

.field edit_name:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0802e3
    .end annotation
.end field

.field private goodsBigType:Ljava/lang/String;

.field private goodsSmallType:Ljava/lang/String;

.field private listAdapter:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

.field private paymentType:Ljava/lang/String;

.field private paymentTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rl:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080164
    .end annotation
.end field

.field private saleType:Ljava/lang/String;

.field private saleTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field sp_big_name:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080165
    .end annotation
.end field

.field sp_pay_type:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080166
    .end annotation
.end field

.field sp_sell_type:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080167
    .end annotation
.end field

.field sp_small_name:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080168
    .end annotation
.end field

.field tvGoodsTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080174
    .end annotation
.end field

.field tvGoodsTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080176
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsBigType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsBigType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsSmallType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$401(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b002a

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 280
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInDp()F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    return v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u67e5\u8be2"

    .line 91
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->edit_name:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querysell/-$$Lambda$QuerySellActivity$0UI97MxxwsTyj9Ob6dbcN0LIKzs;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querysell/-$$Lambda$QuerySellActivity$0UI97MxxwsTyj9Ob6dbcN0LIKzs;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;
    .locals 2

    .line 103
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDataBean;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->listAdapter:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

    .line 171
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->rl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->rl:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->listAdapter:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 174
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->rl:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initSpinners(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 180
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 181
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 182
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 183
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 184
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_big_name:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_pay_type:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_big_name:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 202
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_pay_type:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$4;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 238
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_big_name:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsBigType:Ljava/lang/String;

    .line 239
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsSmallType:Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_pay_type:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentType:Ljava/lang/String;

    .line 241
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_sell_type:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleType:Ljava/lang/String;

    return-void
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$init$0$QuerySellActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->edit_name:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p2

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsBigType:Ljava/lang/String;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->querySaleDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public notifyBigTypeChange()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyListChange()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->listAdapter:Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity$QuerySaleDataAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifySmallTypeChange()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5,
            0x7f0800e6,
            0x7f08016d,
            0x7f08016f,
            0x7f08016e,
            0x7f080171,
            0x7f080175
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    const/16 v3, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v3, v1, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V

    goto/16 :goto_5

    .line 128
    :sswitch_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v3, v1, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V

    goto/16 :goto_5

    .line 122
    :sswitch_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V

    goto :goto_5

    .line 125
    :sswitch_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v3, v1, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V

    goto :goto_5

    .line 119
    :sswitch_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->sortList(IZLandroid/view/View;)V

    goto :goto_5

    .line 115
    :sswitch_5
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->edit_name:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v1, v0

    check-cast v1, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->goodsBigType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->sp_small_name:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, ""

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v4, p1

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->paymentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->saleType:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellPresenter;->querySaleDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800e6 -> :sswitch_5
        0x7f08016d -> :sswitch_4
        0x7f08016e -> :sswitch_3
        0x7f08016f -> :sswitch_2
        0x7f080171 -> :sswitch_1
        0x7f080175 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08016d

    .line 246
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08016f

    .line 247
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08016e

    .line 248
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080171

    .line 249
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080175

    .line 250
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 255
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

    .line 256
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 3

    .line 273
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showTotalCountAndPrice(DD)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->tvGoodsTotalPrice:Landroid/widget/TextView;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
