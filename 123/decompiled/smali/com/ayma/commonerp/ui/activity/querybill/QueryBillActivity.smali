.class public Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryBillActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;",
        "Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/querybill/QueryBillContact$IQueryBillView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

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
        value = 0x7f0800ea
    .end annotation
.end field

.field etGoodsName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800eb
    .end annotation
.end field

.field private goodsBigType:Ljava/lang/String;

.field private goodsSmallType:Ljava/lang/String;

.field rvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ec
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

.field spBigType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ed
    .end annotation
.end field

.field spSaleType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ee
    .end annotation
.end field

.field spSmallType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ef
    .end annotation
.end field

.field tvAddAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800f6
    .end annotation
.end field

.field tvAddCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800f7
    .end annotation
.end field

.field tvAllAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800f1
    .end annotation
.end field

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800f2
    .end annotation
.end field

.field tvFromStockAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fa
    .end annotation
.end field

.field tvFromStockCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fb
    .end annotation
.end field

.field tvInAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080117
    .end annotation
.end field

.field tvInCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080118
    .end annotation
.end field

.field tvLostAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fc
    .end annotation
.end field

.field tvLostCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800fd
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080119
    .end annotation
.end field

.field tvReturnAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080102
    .end annotation
.end field

.field tvReturnAndDamageAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011b
    .end annotation
.end field

.field tvReturnAndDamageCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011c
    .end annotation
.end field

.field tvReturnCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080103
    .end annotation
.end field

.field tvSale12306Amount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080105
    .end annotation
.end field

.field tvSale12306Count:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080106
    .end annotation
.end field

.field tvSaleAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011e
    .end annotation
.end field

.field tvSaleCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08011f
    .end annotation
.end field

.field tvSaleInAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080108
    .end annotation
.end field

.field tvSaleInCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080109
    .end annotation
.end field

.field tvSaleOutAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08010b
    .end annotation
.end field

.field tvSaleOutCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08010c
    .end annotation
.end field

.field tvScrappedAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08010d
    .end annotation
.end field

.field tvScrappedCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08010e
    .end annotation
.end field

.field tvTransferInAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080111
    .end annotation
.end field

.field tvTransferInCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080112
    .end annotation
.end field

.field tvTransferOutAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080114
    .end annotation
.end field

.field tvTransferOutCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080115
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->goodsBigType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->goodsBigType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->goodsSmallType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$201(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$301(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0026

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 319
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
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

    .line 146
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->etGoodsName:Landroid/widget/EditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0800f0

    .line 157
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->adapter:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

    .line 222
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 224
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->rvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->adapter:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;
    .locals 2

    .line 141
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
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

    .line 178
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 179
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 180
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    .line 181
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSaleType:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->saleTypeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$4;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->goodsBigType:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->goodsSmallType:Ljava/lang/String;

    return-void
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyBigTypeChange()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->bigTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataListChange()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->adapter:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->notifyDataSetChanged()V

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->adapter:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->clTable:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public notifySmallTypeChange()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->smallTypeAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

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

    .line 168
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->etGoodsName:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spBigType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSmallType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->spSaleType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->etGoodsName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillPresenter;->querySaleBill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 307
    new-instance v0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showCountAndAmount(Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getInCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvInAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getInAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAndDamageCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAndDamageAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAndDamageAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvFromStockAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getFromStockAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvAddAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getAddAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvReturnAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getReturnAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvScrappedAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getScrappedAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvLostAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getLostAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleOutAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleOutAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSaleInAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSaleInAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Count:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Count()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvSale12306Amount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getSale12306Amount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferInAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferInAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutCount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->tvTransferOutAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/QuerySaleBillCountAndAmount;->getTransferOutAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
