.class public Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "MenuActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;,
        Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;,
        Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuContact$IMenuView;"
    }
.end annotation


# static fields
.field public static final REQUEST_CHANGE_PWD:I = 0x6f

.field public static final REQUEST_UPDATE:I = 0x70

.field protected static final SELL_TYPE_COMMON:I = 0x1

.field protected static final SELL_TYPE_NO_SELL:I = -0x1

.field protected static final SELL_TYPE_REFUND:I = 0x3

.field protected static final SELL_TYPE_VIP:I = 0x2


# instance fields
.field private addRv:Landroidx/recyclerview/widget/RecyclerView;

.field private addTvCommit:Landroid/widget/TextView;

.field private addTvResult:Landroid/widget/TextView;

.field private addTvRoad:Landroid/widget/TextView;

.field private addTvSkip:Landroid/widget/TextView;

.field private addTvStoreType:Landroid/widget/TextView;

.field btnComingUpload:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080098
    .end annotation
.end field

.field btnCommonSell:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080099
    .end annotation
.end field

.field btnDownCommonData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08009a
    .end annotation
.end field

.field btnDownTableDate:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08009b
    .end annotation
.end field

.field btnGoodsOption:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08009c
    .end annotation
.end field

.field btnMakeAddYidi:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08009f
    .end annotation
.end field

.field btnMakeCarAdd:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a0
    .end annotation
.end field

.field btnMakeQuitCar:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a1
    .end annotation
.end field

.field btnMakeQuitClass:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a2
    .end annotation
.end field

.field btnMealWriteOff:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b6
    .end annotation
.end field

.field btnOnlineReturn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a3
    .end annotation
.end field

.field btnQueryEtcAll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a5
    .end annotation
.end field

.field btnQuerySellDetail:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a7
    .end annotation
.end field

.field btnQuerySellGetmoney:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a8
    .end annotation
.end field

.field btnQueryTable:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800a9
    .end annotation
.end field

.field btnQueryWarehouse:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800aa
    .end annotation
.end field

.field btnQuitsystem:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ac
    .end annotation
.end field

.field btnRevisePassword:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ad
    .end annotation
.end field

.field btnSaleCounterRedDot:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ae
    .end annotation
.end field

.field btnSell12306:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800af
    .end annotation
.end field

.field btnSellCounter:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b0
    .end annotation
.end field

.field btnSellTable:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b1
    .end annotation
.end field

.field btnTakeOff:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b2
    .end annotation
.end field

.field btnUpdateOrderPayStatue:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b4
    .end annotation
.end field

.field btnVipLargess:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b5
    .end annotation
.end field

.field clOrder:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b7
    .end annotation
.end field

.field clQueryOther:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b8
    .end annotation
.end field

.field clQuerySell:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0802df
    .end annotation
.end field

.field clReceipt:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800b9
    .end annotation
.end field

.field clSell:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ba
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field private exitDialog:Landroid/app/AlertDialog;

.field fbOrder:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800bd
    .end annotation
.end field

.field fbOther:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800be
    .end annotation
.end field

.field fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800bf
    .end annotation
.end field

.field fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c0
    .end annotation
.end field

.field fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c1
    .end annotation
.end field

.field fbSale:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c2
    .end annotation
.end field

.field private handoverInputCountDialog:Landroid/app/AlertDialog;

.field private handoverInputCountDialogView:Landroid/view/View;

.field private handoverRv:Landroidx/recyclerview/widget/RecyclerView;

.field private handoverTvCommit:Landroid/widget/TextView;

.field private handoverTvResult:Landroid/widget/TextView;

.field private handoverTvRoad:Landroid/widget/TextView;

.field private handoverTvSkip:Landroid/widget/TextView;

.field private inputCountDialog:Landroid/app/AlertDialog;

.field private inputCountDialogView:Landroid/view/View;

.field iv12306SaleRedDot:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c3
    .end annotation
.end field

.field private qhoEtTrain:Landroid/widget/EditText;

.field private qhoPb:Landroid/widget/ProgressBar;

.field private qhoRv:Landroidx/recyclerview/widget/RecyclerView;

.field private qhoTvDate:Landroid/widget/TextView;

.field private qhoTvStart:Landroid/widget/TextView;

.field private qhoTvTip:Landroid/widget/TextView;

.field private quickHandoverAddPopup:Landroid/widget/PopupWindow;

.field private quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

.field private quickHandoverView:Landroid/view/View;

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field private takeOffPopup:Landroid/widget/PopupWindow;

.field tv12306SaleTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c9
    .end annotation
.end field

.field tvFoldOther:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800c4
    .end annotation
.end field

.field tvSaleCounterTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800ca
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800cb
    .end annotation
.end field

.field vOther:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800cc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/view/View;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/EditText;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoEtTrain:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Lcom/ayma/commonerp/app/App;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->app:Lcom/ayma/commonerp/app/App;

    return-object p0
.end method

.method static synthetic lambda$showSelectDateDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1189
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkSimCardInfo()V
    .locals 2

    .line 1517
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u6388\u4e88\u8bfb\u53d6\u624b\u673a\u72b6\u6001\u6743\u9650"

    .line 1521
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->checkPermissions()V

    return-void

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSimCardInfo()V

    return-void
.end method

.method public comingUpload()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public commonSell()V
    .locals 0

    .line 362
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public dealUploadSellDataEvent(Lcom/ayma/commonerp/eventbus/UploadSellDataEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 324
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryNeedUploadData()V

    return-void
.end method

.method public dismissQuickHandoverAdd()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public dismissQuickHandoverHandover()V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public downloadCommonData()V
    .locals 1

    const/16 v0, 0x70

    .line 1026
    invoke-static {p0, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->showForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method public downloadPickingList()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->downloadTeamSaleOutData()V

    return-void
.end method

.method public editQuickHandoverAddData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 523
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00ee

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 525
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f0805cc

    .line 526
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvRoad:Landroid/widget/TextView;

    const v2, 0x7f0805cf

    .line 527
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvStoreType:Landroid/widget/TextView;

    const v2, 0x7f0805ce

    .line 528
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvSkip:Landroid/widget/TextView;

    const v2, 0x7f0805ca

    .line 529
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvCommit:Landroid/widget/TextView;

    const v2, 0x7f0805cb

    .line 530
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    const v2, 0x7f0805c9

    .line 531
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 533
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 534
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f1102ea

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 536
    :cond_0
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvRoad:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v2, v13

    aput-object p2, v2, v1

    const-string v3, "%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvStoreType:Landroid/widget/TextView;

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;

    move-object/from16 v14, p10

    invoke-direct {v0, v12, v14}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/util/List;)V

    .line 541
    iget-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 542
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 544
    iget-object v15, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvSkip:Landroid/widget/TextView;

    new-instance v10, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/lang/String;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v13, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvCommit:Landroid/widget/TextView;

    new-instance v15, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;

    move-object v0, v15

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/lang/String;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020002

    .line 579
    invoke-virtual {v12, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 580
    iget-object v2, v12, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public editQuickHandoverAddQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V
    .locals 7

    .line 593
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0058

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const v2, 0x7f08072b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 597
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const v3, 0x7f08077d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 598
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const v4, 0x7f08035c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ayma/base/widget/ClearEditText;

    .line 600
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const v5, 0x7f0802a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 601
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    const v6, 0x7f0802aa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 603
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getOptionQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 607
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 615
    :cond_2
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$EdPGTkA1ROc_JOFvJQYwYGwhQHo;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    new-instance p1, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$FgMNUX_xxXBbHi9bHLI2ZZ5dEck;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$FgMNUX_xxXBbHi9bHLI2ZZ5dEck;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 647
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    .line 648
    invoke-virtual {v3, p1}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 649
    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public editQuickHandoverHandoverData(Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/TrainInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00ef

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 665
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f0805d7

    .line 666
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvRoad:Landroid/widget/TextView;

    const v2, 0x7f0805d9

    .line 667
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvSkip:Landroid/widget/TextView;

    const v2, 0x7f0805d5

    .line 668
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvCommit:Landroid/widget/TextView;

    const v2, 0x7f0805d6

    .line 669
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    const v2, 0x7f0805d4

    .line 670
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 672
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 673
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f1102ea

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvRoad:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TrainInfo;->getTrainName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p2, v2, v1

    const-string v3, "%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;

    invoke-direct {v0, p0, p3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverHandoverAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/util/List;)V

    .line 679
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 680
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 682
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvSkip:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvCommit:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Lcom/ayma/commonerp/bean/TrainInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x1020002

    .line 718
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 719
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    const/16 p3, 0x51

    invoke-virtual {p2, p1, p3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public editQuickHandoverHandoverQty(Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V
    .locals 7

    .line 724
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const v2, 0x7f08072b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 728
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const v3, 0x7f080785

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 729
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const v4, 0x7f08035c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ayma/base/widget/ClearEditText;

    .line 731
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const v5, 0x7f0802a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 732
    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    const v6, 0x7f0802aa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 734
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getAutualQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 738
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 739
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 740
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 746
    :cond_2
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$Iq-baqpmZiOPh-KSfaHgCwOPL18;

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$Iq-baqpmZiOPh-KSfaHgCwOPL18;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    new-instance p1, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$qTquNmjOFO424g1hX7XYSEs8Zrk;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$qTquNmjOFO424g1hX7XYSEs8Zrk;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 783
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    .line 784
    invoke-virtual {v3, p1}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 785
    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1067
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 1068
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {v0}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 1069
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0022

    return v0
.end method

.method public init()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->app:Lcom/ayma/commonerp/app/App;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/app/App;->setEnterMenu(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->hideBack()V

    const-string v0, "\u8bbe\u7f6e"

    .line 337
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->queryTakeOffPermission(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;
    .locals 2

    .line 343
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isResume()Z
    .locals 1

    .line 1220
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isResume:Z

    return v0
.end method

.method public synthetic lambda$editQuickHandoverAddQty$0$MenuActivity(Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;ILandroid/view/View;)V
    .locals 4

    .line 617
    :try_start_0
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 618
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-nez p4, :cond_1

    const-string p2, "\u8981\u6599\u6570\u4e0d\u80fd\u4e3a0"

    .line 625
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    :cond_1
    cmpg-double p4, v0, v2

    if-gez p4, :cond_2

    const-string p2, "\u8981\u6599\u6570\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    .line 630
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 634
    :cond_2
    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setOptionQty(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 636
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 637
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, "\u8981\u6599\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 619
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 640
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$editQuickHandoverAddQty$1$MenuActivity(Landroid/view/View;)V
    .locals 0

    .line 645
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$editQuickHandoverHandoverQty$2$MenuActivity(Lcom/ayma/base/widget/ClearEditText;Lcom/ayma/commonerp/bean/ReceiptJsonBean;ILandroid/view/View;)V
    .locals 4

    .line 748
    :try_start_0
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 749
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-nez p4, :cond_1

    const-string p2, "\u4ea4\u63a5\u6570\u4e0d\u80fd\u4e3a0"

    .line 756
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    :cond_1
    cmpg-double p4, v0, v2

    if-gez p4, :cond_2

    const-string p2, "\u4ea4\u63a5\u6570\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    .line 761
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 765
    :cond_2
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getAutualQty()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double p4, v0, v2

    if-lez p4, :cond_3

    const-string p2, "\u4ea4\u63a5\u6570\u4e0d\u80fd\u5927\u4e8e\u5e93\u5b58\u6570"

    .line 766
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 770
    :cond_3
    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setQty(Ljava/lang/String;)V

    .line 771
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 772
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 773
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p2, "\u8981\u6599\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 750
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 776
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 777
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$editQuickHandoverHandoverQty$3$MenuActivity(Landroid/view/View;)V
    .locals 0

    .line 781
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverInputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showQuitSystemDialog$4$MenuActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1055
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1056
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->exit()V

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$5$MenuActivity(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 1176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1177
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 1178
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1179
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$6$MenuActivity(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1184
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p1, :cond_0

    .line 1186
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public loadMenu(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/PdaPermissionBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 806
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    .line 808
    iget-object v2, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v2

    .line 810
    iget-object v3, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v3

    .line 812
    iget-object v4, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v4

    .line 814
    iget-object v5, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v5

    .line 816
    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayout;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 818
    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 821
    :cond_0
    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 823
    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 826
    :cond_1
    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_2

    .line 828
    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 831
    :cond_2
    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_3

    .line 833
    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 836
    :cond_3
    iget-object v6, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_4

    .line 838
    iget-object v9, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 842
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ayma/commonerp/bean/PdaPermissionBean;

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v1, :cond_7

    .line 844
    iget-object v7, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v7, v15}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 845
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-virtual {v14}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getMenuCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    .line 847
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_5
    move/from16 v18, v1

    :cond_6
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    const/16 v7, 0x8

    goto :goto_6

    :cond_7
    move/from16 v18, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_9

    .line 851
    iget-object v7, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 852
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v14}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getMenuCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    .line 854
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_b

    .line 858
    iget-object v7, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 859
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v14}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getMenuCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    .line 861
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v4, :cond_d

    .line 865
    iget-object v7, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 866
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v14}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getMenuCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    .line 868
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v5, :cond_f

    .line 872
    iget-object v7, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 873
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v14}, Lcom/ayma/commonerp/bean/PdaPermissionBean;->getMenuCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    .line 875
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    move/from16 v1, v18

    const/16 v7, 0x8

    goto/16 :goto_5

    :cond_10
    if-nez v9, :cond_11

    .line 880
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clSell:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    const/16 v2, 0x8

    .line 882
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clSell:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_c
    if-nez v10, :cond_12

    .line 885
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clOrder:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_d

    .line 887
    :cond_12
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clOrder:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_d
    if-nez v11, :cond_13

    .line 890
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQuerySell:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_e

    .line 892
    :cond_13
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQuerySell:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_e
    if-nez v12, :cond_14

    .line 895
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQueryOther:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_f

    .line 897
    :cond_14
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQueryOther:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_f
    if-nez v13, :cond_15

    .line 900
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clReceipt:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_10

    .line 902
    :cond_15
    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clReceipt:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method public makeAdd()V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public makeCarAdd()V
    .locals 1

    const-string v0, "goodsIn"

    .line 916
    invoke-static {p0, v0}, Lcom/ayma/commonerp/ui/activity/replenishmentquotwarehouse/ReplenishmentQuotWarehouseActivity;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public makeCarQuit()V
    .locals 0

    .line 924
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public makeQuitClass()V
    .locals 1

    const-string v0, "returnWarehouse"

    .line 942
    invoke-static {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1436
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p2, :cond_5

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "updateSignInStatue"

    const/4 p2, -0x1

    .line 1450
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xd3

    if-ne p1, v0, :cond_2

    .line 1453
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkSignStatue()V

    :cond_2
    const-string p1, "updatePdaPermission"

    .line 1455
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd4

    if-ne p1, p2, :cond_5

    .line 1458
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->loadMenu()V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p1, 0x7a

    if-ne p2, p1, :cond_5

    .line 1441
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->app:Lcom/ayma/commonerp/app/App;

    invoke-virtual {p1}, Lcom/ayma/commonerp/app/App;->finishAll()V

    .line 1442
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->clearAll()V

    .line 1443
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->show(Landroid/content/Context;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1471
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1480
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    return-void

    .line 1483
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1486
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->exitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1489
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u64cd\u4f5c"

    .line 1490
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$14;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$14;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    const-string v2, "\u9000\u51fa\u7cfb\u7edf"

    .line 1491
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$13;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    const-string v2, "\u767b\u51fa\u5f53\u524d\u7528\u6237"

    .line 1499
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->exitDialog:Landroid/app/AlertDialog;

    .line 1508
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1509
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->exitDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 286
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->init()V

    .line 289
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->checkSimCardInfo()V

    .line 290
    invoke-static {}, Lcom/ayma/commonerp/app/AppUserData;->isQC()Z

    move-result p1

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->query12306Order(Z)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/base/util/CommonUtil;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p1}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->isSNEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/util/UnitechDeviceUtil;->getSerialNumberAsync(Landroid/content/Context;Lcom/ayma/commonerp/util/UnitechDeviceUtil$GetSNCallback;)V

    goto :goto_0

    .line 312
    :cond_1
    sput-object p1, Lcom/ayma/commonerp/config/Constants;->DEVICE_SN:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 318
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 319
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 329
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onResume()V

    .line 330
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->onResume()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080099,
            0x7f0800b5,
            0x7f0800b0,
            0x7f0800b6,
            0x7f0800a3,
            0x7f0800b4,
            0x7f08009e,
            0x7f0800b1,
            0x7f0800a7,
            0x7f0800a4,
            0x7f0800a6,
            0x7f0800a8,
            0x7f0800aa,
            0x7f0800a5,
            0x7f0800a9,
            0x7f0800a0,
            0x7f0800a1,
            0x7f08009f,
            0x7f0800a2,
            0x7f0800b3,
            0x7f0800af,
            0x7f0800c9,
            0x7f08009a,
            0x7f08009b,
            0x7f080098,
            0x7f0800ad,
            0x7f0800b2,
            0x7f0800ac,
            0x7f0800cb,
            0x7f0800e6,
            0x7f080097,
            0x7f0800ab,
            0x7f08009c,
            0x7f0800c4,
            0x7f08009d
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkToken()V

    .line 1245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1364
    :sswitch_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/setting/SettingActivity;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1358
    :sswitch_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSignInStatue(ZI)V

    goto/16 :goto_0

    .line 1276
    :sswitch_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->query12306Order(Z)V

    goto/16 :goto_0

    .line 1380
    :sswitch_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u5c55\u5f00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1381
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    const-string v0, "\u6298\u53e0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 1383
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1384
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOther:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    .line 1387
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1388
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1389
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1391
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOther:Lcom/google/android/flexbox/FlexboxLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    .line 1397
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1398
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1261
    :pswitch_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1253
    :pswitch_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSignInStatue(ZI)V

    goto/16 :goto_0

    .line 1354
    :pswitch_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateOrderPayStatue(Z)V

    goto/16 :goto_0

    .line 1336
    :pswitch_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkHandoverPermission()V

    goto/16 :goto_0

    .line 1346
    :pswitch_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkNoUploadSellData()V

    goto/16 :goto_0

    .line 1296
    :pswitch_5
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->sellAnalyse()V

    goto/16 :goto_0

    .line 1258
    :pswitch_6
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1273
    :pswitch_7
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->sell12306()V

    goto/16 :goto_0

    .line 1324
    :pswitch_8
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->revisePassword()V

    goto/16 :goto_0

    .line 1332
    :pswitch_9
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showQuitSystemDialog()V

    goto/16 :goto_0

    .line 1374
    :pswitch_a
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandover()V

    goto/16 :goto_0

    .line 1269
    :pswitch_b
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->queryWarehouse()V

    goto/16 :goto_0

    .line 1280
    :pswitch_c
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->queryTable()V

    goto/16 :goto_0

    .line 1288
    :pswitch_d
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->querySellGetMoney()V

    goto/16 :goto_0

    .line 1312
    :pswitch_e
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->querySellDetail()V

    goto/16 :goto_0

    .line 1367
    :pswitch_f
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderActivity;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1284
    :pswitch_10
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->queryEtcAll()V

    goto/16 :goto_0

    .line 1361
    :pswitch_11
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1340
    :pswitch_12
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSignInStatue(ZI)V

    goto/16 :goto_0

    .line 1316
    :pswitch_13
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->makeQuitClass()V

    goto/16 :goto_0

    .line 1300
    :pswitch_14
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->makeCarQuit()V

    goto/16 :goto_0

    .line 1292
    :pswitch_15
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->makeCarAdd()V

    goto :goto_0

    .line 1308
    :pswitch_16
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkAddGoodsPermission()V

    goto :goto_0

    .line 1350
    :pswitch_17
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->toInvoicing()V

    goto :goto_0

    .line 1409
    :pswitch_18
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    const-string v3, "\u9ad8\u94c1\u914d\u9910"

    .line 1411
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content"

    const-string v3, "\u5b89\u88c5\u9ad8\u94c1\u914d\u9910"

    .line 1413
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tips"

    const-string v3, "\u6ce8\uff1a\u5b89\u88c5\u7248\u672c\u4e3av5.9.0.4"

    .line 1414
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    const-string v3, "https://mobile.12306.cn/otsmobile/app/mdsweb/mcube/8DBA91F091009-product/5.9.0.4/ANDROID/gtpc-v5.9.0.4.apk"

    .line 1417
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x6e

    const-string v3, "versionCode"

    .line 1419
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "isCheckMd5"

    .line 1421
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isForceUpdate"

    .line 1425
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cancelable"

    .line 1427
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1428
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->setAutoSizeConfig()V

    .line 1429
    invoke-static {p0, p1}, Lcom/ayma/appupdater/ui/UpdateVersionDialog;->show(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1377
    :pswitch_19
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 1328
    :pswitch_1a
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->downloadPickingList()V

    goto :goto_0

    .line 1320
    :pswitch_1b
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->downloadCommonData()V

    goto :goto_0

    .line 1248
    :pswitch_1c
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1, v0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->updateSignInStatue(ZI)V

    goto :goto_0

    .line 1265
    :pswitch_1d
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->comingUpload()V

    goto :goto_0

    .line 1370
    :pswitch_1e
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->checkUpdate(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080097
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0800af
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f0800c4 -> :sswitch_3
        0x7f0800c9 -> :sswitch_2
        0x7f0800cb -> :sswitch_1
        0x7f0800e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public queryEtcAll()V
    .locals 0

    .line 983
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public querySellAll()V
    .locals 0

    .line 1017
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/querysell/QuerySellActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public querySellDetail()V
    .locals 0

    .line 1008
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public querySellGetMoney()V
    .locals 0

    .line 991
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public queryTable()V
    .locals 0

    .line 975
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public queryWarehouse()V
    .locals 0

    .line 967
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public quickHandover()V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805dc

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoEtTrain:Landroid/widget/EditText;

    .line 405
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvDate:Landroid/widget/TextView;

    .line 406
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvTip:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoPb:Landroid/widget/ProgressBar;

    .line 408
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvStart:Landroid/widget/TextView;

    .line 409
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    const v1, 0x7f0805e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvDate:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvStart:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoPb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public revisePassword()V
    .locals 2

    const/16 v0, 0x6f

    const/4 v1, 0x1

    .line 951
    invoke-static {p0, v0, v1}, Lcom/ayma/commonerp/ui/activity/revisepwd/RevisePasswordActivity;->show(Landroid/app/Activity;II)V

    return-void
.end method

.method public sell12306()V
    .locals 0

    .line 379
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public sellAnalyse()V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public setQuickHandoverLoading(Z)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoPb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setQuickHandoverOptionEnable(Z)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoTvStart:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public show12306Order(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1542
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\u60a8\u6709%s\u7b14\u672a\u5904\u7406\u768412306\u9884\u552e\u8ba2\u5355\uff0c\u8bf7\u53ca\u65f6\u67e5\u770b\u5904\u7406"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1548
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1543
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public show12306TipDot(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showNotUploadSellData(I)V
    .locals 6

    .line 1079
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isResume:Z

    if-nez v0, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 1085
    new-instance p1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u4e0a\u4f20("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1086
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1087
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/16 v5, 0x21

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1088
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3fa66666    # 1.3f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 1089
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1090
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1091
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1092
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnComingUpload:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1094
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnComingUpload:Landroid/widget/Button;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "\u672a\u4e0a\u4f20(%s)\u6761"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showQuickHandoverAddResult(Ljava/lang/String;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverAddPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->addTvResult:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showQuickHandoverHandoverResult(Ljava/lang/String;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverHandoverPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->handoverTvResult:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showQuickHandoverResult(Ljava/lang/String;IZ)V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandoverView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 498
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    .line 499
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 500
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 501
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/ayma/watermark/util/DensityUtil;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/ayma/watermark/util/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 504
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;

    invoke-virtual {p3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->clear()V

    .line 506
    :cond_2
    new-instance p3, Lcom/ayma/commonerp/bean/QuickHandoverBean;

    invoke-direct {p3}, Lcom/ayma/commonerp/bean/QuickHandoverBean;-><init>()V

    .line 507
    invoke-virtual {p3, p1}, Lcom/ayma/commonerp/bean/QuickHandoverBean;->setMessage(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p3, p2}, Lcom/ayma/commonerp/bean/QuickHandoverBean;->setStatue(I)V

    .line 509
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 512
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->addData(Lcom/ayma/commonerp/bean/QuickHandoverBean;)V

    .line 513
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->qhoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showQuitSystemDialog()V
    .locals 9

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u767b\u51fa\u5f53\u524d\u7528\u6237\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$JwUGVS4KmU4k2N_jXsPCQD8IgQc;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$JwUGVS4KmU4k2N_jXsPCQD8IgQc;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    const-string v3, ""

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u786e\u5b9a"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showSelectDateDialog(Landroid/widget/TextView;)V
    .locals 9

    .line 1163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0060

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080304

    .line 1165
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 1166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 1167
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 1168
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 1169
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1170
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "yyyyMMdd"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1172
    invoke-virtual {v7, v4, v5, v3}, Ljava/util/Calendar;->set(III)V

    .line 1173
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->date:Ljava/lang/String;

    .line 1175
    new-instance v6, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$UKIIpiI9UDAQouuhfkBJ7V3YV_o;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$UKIIpiI9UDAQouuhfkBJ7V3YV_o;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 1182
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1183
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/widget/TextView;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v1, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$8Njk3MW8tA6Kx4MO3jYsjDceR1E;->INSTANCE:Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$8Njk3MW8tA6Kx4MO3jYsjDceR1E;

    const-string v2, "\u53d6\u6d88"

    .line 1189
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1191
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showSignInStatue(Z)V
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnCommonSell:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1207
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnVipLargess:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1208
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnOnlineReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1209
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSellCounter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvTips:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTakeOffIsNot(Z)V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnTakeOff:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showUnHandleCounterOrder(ZI)V
    .locals 4

    .line 1530
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSaleCounterRedDot:Landroid/widget/Button;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSaleCounterRedDot:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvSaleCounterTip:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public takeOff()V
    .locals 8

    .line 1106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0101

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1108
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 1110
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v2, 0x7f08072b

    .line 1112
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08078d

    .line 1113
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1114
    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v7, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    sget-object v7, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    aput-object v7, v4, v5

    const-string v5, "\u5373\u5c06\u8fdb\u884c\u9000\u4e58\uff0c\u8bf7\u786e\u8ba4\uff1a\n\n\u5de5\u53f7\uff1a%s\n\u59d3\u540d\uff1a%s\n\u73ed\u7ec4\uff1a%s\n\u8f66\u6b21\uff1a%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08078b

    .line 1120
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;

    invoke-direct {v4, p0, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080723

    .line 1135
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$11;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;

    invoke-direct {v0, p0, v3}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1148
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1149
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f1102ea

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const v0, 0x1020002

    .line 1150
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1151
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->takeOffPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public teamHandover()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public toInvoicing()V
    .locals 0

    .line 1215
    invoke-static {p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public toRefund()V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public vipLargess()V
    .locals 1

    const-string v0, "VIP"

    .line 371
    invoke-static {p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
