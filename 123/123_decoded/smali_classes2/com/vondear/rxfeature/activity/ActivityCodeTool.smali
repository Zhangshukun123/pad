.class public Lcom/vondear/rxfeature/activity/ActivityCodeTool;
.super Lcom/vondear/rxui/activity/ActivityBase;
.source "ActivityCodeTool.java"


# static fields
.field private static final NUMBER_LIST:[C


# instance fields
.field private mActivityCodeTool:Landroid/widget/LinearLayout;

.field private mEtBarCode:Landroid/widget/EditText;

.field private mEtQrCode:Landroid/widget/EditText;

.field private mIvBarCode:Landroid/widget/ImageView;

.field private mIvCreateBarCode:Landroid/widget/ImageView;

.field private mIvCreateQrCode:Landroid/widget/ImageView;

.field private mIvQrCode:Landroid/widget/ImageView;

.field private mLlBar:Landroid/widget/LinearLayout;

.field private mLlBarCode:Landroid/widget/LinearLayout;

.field private mLlBarRoot:Landroid/widget/LinearLayout;

.field private mLlCode:Landroid/widget/LinearLayout;

.field private mLlQr:Landroid/widget/LinearLayout;

.field private mLlQrRoot:Landroid/widget/LinearLayout;

.field private mLlScaner:Landroid/widget/LinearLayout;

.field private mRxTickerViewMade:Lcom/vondear/rxui/view/ticker/RxTickerView;

.field private mRxTickerViewScan:Lcom/vondear/rxui/view/ticker/RxTickerView;

.field private mRxTitle:Lcom/vondear/rxui/view/RxTitle;

.field private nestedScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/vondear/rxui/view/ticker/RxTickerUtils;->getDefaultNumberList()[C

    move-result-object v0

    sput-object v0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->NUMBER_LIST:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/vondear/rxui/activity/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mEtQrCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlCode:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvQrCode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->updateMadeCodeCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mEtBarCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBarCode:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvBarCode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlQrRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBarRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initEvent()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTitle:Lcom/vondear/rxui/view/RxTitle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/RxTitle;->setLeftIconVisibility(Z)V

    .line 107
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTitle:Lcom/vondear/rxui/view/RxTitle;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/RxTitle;->setTitleColor(I)V

    .line 108
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTitle:Lcom/vondear/rxui/view/RxTitle;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/vondear/rxtool/RxImageTool;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/RxTitle;->setTitleSize(I)V

    .line 109
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTitle:Lcom/vondear/rxui/view/RxTitle;

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/RxTitle;->setLeftFinish(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTickerViewScan:Lcom/vondear/rxui/view/ticker/RxTickerView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/vondear/rxui/view/ticker/RxTickerView;->setAnimationDuration(J)V

    .line 113
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvCreateQrCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;-><init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvCreateBarCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;-><init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlScaner:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool$3;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool$3;-><init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlQr:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool$4;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool$4;-><init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;

    invoke-direct {v1, p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;-><init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateMadeCodeCount()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTickerViewMade:Lcom/vondear/rxui/view/ticker/RxTickerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v3, "MADE_CODE"

    invoke-static {v2, v3}, Lcom/vondear/rxtool/RxSPTool;->getContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vondear/rxtool/RxDataTool;->stringToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vondear/rxui/view/ticker/RxTickerView;->setText(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateScanCodeCount()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTickerViewScan:Lcom/vondear/rxui/view/ticker/RxTickerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v3, "SCAN_CODE"

    invoke-static {v2, v3}, Lcom/vondear/rxtool/RxSPTool;->getContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vondear/rxtool/RxDataTool;->stringToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vondear/rxui/view/ticker/RxTickerView;->setText(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .line 70
    sget v0, Lcom/vondear/rxfeature/R$id;->rx_title:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vondear/rxui/view/RxTitle;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTitle:Lcom/vondear/rxui/view/RxTitle;

    .line 71
    sget v0, Lcom/vondear/rxfeature/R$id;->et_qr_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mEtQrCode:Landroid/widget/EditText;

    .line 72
    sget v0, Lcom/vondear/rxfeature/R$id;->iv_create_qr_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvCreateQrCode:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/vondear/rxfeature/R$id;->iv_qr_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvQrCode:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/vondear/rxfeature/R$id;->activity_code_tool:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mActivityCodeTool:Landroid/widget/LinearLayout;

    .line 75
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlCode:Landroid/widget/LinearLayout;

    .line 76
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_qr_root:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlQrRoot:Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcom/vondear/rxfeature/R$id;->nestedScrollView:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 80
    sget v0, Lcom/vondear/rxfeature/R$id;->et_bar_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mEtBarCode:Landroid/widget/EditText;

    .line 81
    sget v0, Lcom/vondear/rxfeature/R$id;->iv_create_bar_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvCreateBarCode:Landroid/widget/ImageView;

    .line 82
    sget v0, Lcom/vondear/rxfeature/R$id;->iv_bar_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mIvBarCode:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_bar_code:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBarCode:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_bar_root:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBarRoot:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_scaner:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlScaner:Landroid/widget/LinearLayout;

    .line 86
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_qr:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlQr:Landroid/widget/LinearLayout;

    .line 87
    sget v0, Lcom/vondear/rxfeature/R$id;->ll_bar:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mLlBar:Landroid/widget/LinearLayout;

    .line 89
    sget v0, Lcom/vondear/rxfeature/R$id;->ticker_scan_count:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vondear/rxui/view/ticker/RxTickerView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTickerViewScan:Lcom/vondear/rxui/view/ticker/RxTickerView;

    .line 90
    sget-object v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->NUMBER_LIST:[C

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/ticker/RxTickerView;->setCharacterList([C)V

    .line 92
    sget v0, Lcom/vondear/rxfeature/R$id;->ticker_made_count:I

    invoke-virtual {p0, v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vondear/rxui/view/ticker/RxTickerView;

    iput-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mRxTickerViewMade:Lcom/vondear/rxui/view/ticker/RxTickerView;

    .line 93
    sget-object v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->NUMBER_LIST:[C

    invoke-virtual {v0, v1}, Lcom/vondear/rxui/view/ticker/RxTickerView;->setCharacterList([C)V

    .line 94
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->updateMadeCodeCount()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/vondear/rxui/activity/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lcom/vondear/rxtool/RxBarTool;->noTitle(Landroid/app/Activity;)V

    .line 57
    invoke-static {p0}, Lcom/vondear/rxtool/RxBarTool;->setTransparentStatusBar(Landroid/app/Activity;)V

    .line 58
    sget p1, Lcom/vondear/rxfeature/R$layout;->activity_code_tool:I

    invoke-virtual {p0, p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->initView()V

    .line 60
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->initEvent()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/vondear/rxui/activity/ActivityBase;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->updateScanCodeCount()V

    return-void
.end method
