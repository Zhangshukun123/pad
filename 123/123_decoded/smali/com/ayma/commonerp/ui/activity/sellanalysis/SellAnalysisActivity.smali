.class public Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "SellAnalysisActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;",
        "Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisContact$ISellAnalysisView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
    }
.end annotation


# instance fields
.field private analysisAdapter:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

.field private bigTypeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clTable:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021c
    .end annotation
.end field

.field etGoodsName:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08021d
    .end annotation
.end field

.field private goodsBigType:Ljava/lang/String;

.field private goodsSmallType:Ljava/lang/String;

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080220
    .end annotation
.end field

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
        value = 0x7f080222
    .end annotation
.end field

.field spSellType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080223
    .end annotation
.end field

.field spSmallName:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080224
    .end annotation
.end field

.field tvAddAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080228
    .end annotation
.end field

.field tvAddCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080229
    .end annotation
.end field

.field tvInAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080230
    .end annotation
.end field

.field tvInCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080231
    .end annotation
.end field

.field tvLostAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080232
    .end annotation
.end field

.field tvLostCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080233
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080247
    .end annotation
.end field

.field tvOutAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080237
    .end annotation
.end field

.field tvOutCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080238
    .end annotation
.end field

.field tvOutStockAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08023a
    .end annotation
.end field

.field tvOutStockCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08023b
    .end annotation
.end field

.field tvReturnAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08023d
    .end annotation
.end field

.field tvReturnCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08023e
    .end annotation
.end field

.field tvSale12306Amount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08023f
    .end annotation
.end field

.field tvSale12306Count:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080240
    .end annotation
.end field

.field tvSaleAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08022d
    .end annotation
.end field

.field tvSaleCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08022e
    .end annotation
.end field

.field tvScrappedAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080241
    .end annotation
.end field

.field tvScrappedCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080242
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08024d
    .end annotation
.end field

.field tvTrainStockAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080244
    .end annotation
.end field

.field tvTrainStockCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080245
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsBigType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsBigType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsSmallType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$201(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$301(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0033

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 353
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
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

    .line 131
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sellanalysis/-$$Lambda$SellAnalysisActivity$ZlXoz6bYhTKOXT5ZRgDKqDvO0XM;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/-$$Lambda$SellAnalysisActivity$ZlXoz6bYhTKOXT5ZRgDKqDvO0XM;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;
    .locals 2

    .line 143
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
            ">;)V"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->analysisAdapter:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    .line 193
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 194
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 195
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->analysisAdapter:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initSpinner(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 202
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 203
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 204
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spBigName:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSellType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spBigName:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$2;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 233
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spBigName:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsBigType:Ljava/lang/String;

    .line 234
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsSmallType:Ljava/lang/String;

    return-void
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$init$0$SellAnalysisActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsBigType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->querySaleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public notifyBigTypeChange()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataListChange()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->analysisAdapter:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->notifyDataSetChanged()V

    .line 259
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->analysisAdapter:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public notifySmallTypeChange()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onBtnQueryClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->goodsBigType:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSmallName:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->spSellType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->querySaleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTvGoodsAddClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080227
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08022a
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080235
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

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
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsSaleClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08022b
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvTrainStockClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080246
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;

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

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08022a

    .line 316
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080235

    .line 317
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08022b

    .line 318
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080246

    .line 319
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080227

    .line 320
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
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

    .line 325
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 326
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 341
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showAmount(Lcom/ayma/commonerp/bean/SaleAnalysisAmount;Ljava/lang/String;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getAddCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getInCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutStockCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getReturnCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getScrappedCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getLostCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSaleCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Count:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSale12306Count()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getTrainStockCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvAddAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getAddAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvInAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getInAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutStockAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutStockAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvReturnAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getReturnAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvScrappedAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getScrappedAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvLostAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getLostAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSaleAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSaleAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvSale12306Amount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getSale12306Amount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvOutAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getOutAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTrainStockAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/SaleAnalysisAmount;->getTrainStockAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTips:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTips:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->tvTips:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showErrorTip(Ljava/lang/String;)V
    .locals 2

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "\u8bf7\u8054\u7cfb\u5e93\u623f\u5904\u7406"

    aput-object v1, v0, p1

    const-string p1, "%s\n%s"

    .line 310
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
