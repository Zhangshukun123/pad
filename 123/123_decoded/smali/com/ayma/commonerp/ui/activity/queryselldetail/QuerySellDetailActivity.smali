.class public Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QuerySellDetailActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;",
        "Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailContact$IQuerySellDetailView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
    }
.end annotation


# static fields
.field private static final KEY_GOODS_NAME:Ljava/lang/String; = "goodsName"


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

.field private bigTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field btnRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field cb:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080160
    .end annotation
.end field

.field etGoodsName:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080163
    .end annotation
.end field

.field private goodsBigType:Ljava/lang/String;

.field private goodsPopup:Landroid/widget/PopupWindow;

.field private goodsSmallType:Ljava/lang/String;

.field private isSelected:Z

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

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
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

.field spBigName:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080165
    .end annotation
.end field

.field spPayType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080166
    .end annotation
.end field

.field spSellType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080167
    .end annotation
.end field

.field spSmallName:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080168
    .end annotation
.end field

.field tvDataCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08016b
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080178
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->isSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsBigType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsBigType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsSmallType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->paymentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->saleType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->isSelected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$601(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$701(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "goodsName"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b002b

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 437
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
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

    .line 120
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->cb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;
    .locals 2

    .line 157
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    .line 229
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 232
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 237
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 238
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 239
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->paymentTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 240
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 241
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spBigName:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 242
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 243
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spPayType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->paymentTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 244
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSellType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 246
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spBigName:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 272
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spPayType:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$4;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 284
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSellType:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$5;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public initSuccess()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goodsName"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 342
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyBigTypeChange()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataListChange()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->notifyDataSetChanged()V

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySmallTypeChange()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 312
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onBtnBackClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->finish()V

    return-void
.end method

.method public onBtnQueryClicked()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->hideSoftKeyboard()V

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v2, v1

    check-cast v2, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsBigType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->spSmallName:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->saleType:Ljava/lang/String;

    iget-object v6, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->paymentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->queryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onTvAmountHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080175
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsCodeHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08016d
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08016f
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080171
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08016e
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvOrderTypeHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080179
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvPayTypeHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080170
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvSellTimeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080172
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvSellTypeHintClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080173
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;

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
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08016d

    .line 394
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08016f

    .line 395
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08016e

    .line 396
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080171

    .line 397
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080175

    .line 398
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080173

    .line 399
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080170

    .line 400
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080172

    .line 401
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080179

    .line 402
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 407
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

    .line 408
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 409
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 425
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showGoodsNamePopup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    const v1, 0x7f0b00f1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f08062d

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 376
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->context:Landroid/content/Context;

    const v3, 0x1090009

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsPopup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 389
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->goodsPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public updateCountAndMoney(DDDDD)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->tvDataCount:Landroid/widget/TextView;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 357
    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 358
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 359
    invoke-static {p5, p6}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 360
    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 361
    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const-string p1, "\u9500\u552e\u6570\u91cf\uff1a%s\uff0c\u9500\u552e\u91d1\u989d\uff1a%s\u5143\uff1b\u9000\u5355\u6570\u91cf\uff1a%s\uff0c\u9000\u5355\u91d1\u989d\uff1a%s\u5143\uff1b\u4f18\u60e0\u91d1\u989d\uff1a%s\u5143"

    .line 356
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
