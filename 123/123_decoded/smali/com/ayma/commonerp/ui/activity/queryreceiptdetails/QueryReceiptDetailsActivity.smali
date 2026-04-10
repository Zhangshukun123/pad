.class public Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "QueryReceiptDetailsActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsContact$IQueryReceiptDetailsView;",
        "Lme/jessyan/autosize/internal/CustomAdapt;"
    }
.end annotation


# static fields
.field public static final KEY_BILL_NO:Ljava/lang/String; = "billNo"

.field public static final KEY_OUT_DATE:Ljava/lang/String; = "outDate"

.field public static final KEY_POST_MARK:Ljava/lang/String; = "postMark"

.field public static final KEY_SOURCE_TYPE:Ljava/lang/String; = "sourceType"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_STORE_OUT_ID:Ljava/lang/String; = "storeOutId"

.field public static final KEY_STORE_TYPE_NAME:Ljava/lang/String; = "storeTypeName"

.field public static final KEY_TRAIN_CODE:Ljava/lang/String; = "trainCode"


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080139
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private storeOutId:Ljava/lang/String;

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08013a
    .end annotation
.end field

.field tvAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08013b
    .end annotation
.end field

.field tvGoodsAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080144
    .end annotation
.end field

.field tvGoodsAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080146
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08014a
    .end annotation
.end field

.field tvOrderNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08014b
    .end annotation
.end field

.field tvOrderState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08014d
    .end annotation
.end field

.field tvOrderType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08014f
    .end annotation
.end field

.field tvOutDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080151
    .end annotation
.end field

.field tvStockModel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080159
    .end annotation
.end field

.field tvTrainNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08015c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->state:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->state:Ljava/lang/String;

    return-object p0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "storeOutId"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "state"

    .line 85
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0029

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 189
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInDp()F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    return v0
.end method

.method public init(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvOrderNo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvOrderState:Landroid/widget/TextView;

    sget-object v1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE_MAP_2:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getPostMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvOrderType:Landroid/widget/TextView;

    sget-object v1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_MAP_2:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getOpStoreType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvTrainNo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvOutDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getOutDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvStockModel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getStoreTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;
    .locals 2

    .line 112
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isBaseOnWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyGoodsList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    .line 151
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->notifyDataSetChanged()V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->adapter:Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$QueryReceiptDetailsAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "storeOutId"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->storeOutId:Ljava/lang/String;

    const-string v0, "state"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->state:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->storeOutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsPresenter;->fetchGoodsData(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->state:Ljava/lang/String;

    return-void
.end method

.method public setAutoSizeConfig()V
    .locals 1

    .line 177
    new-instance v0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5355\u636e\u8be6\u60c5"

    return-object v0
.end method

.method public showAllCountandAllMoney(DD)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvGoodsAllCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvGoodsAllMoney:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvAllCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "\u5408\u8ba1\u6570\u91cf\uff1a%s \u4e2a"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceiptdetails/QueryReceiptDetailsActivity;->tvAllMoney:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "\u5408\u8ba1\u91d1\u989d\uff1a%s \u5143"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
