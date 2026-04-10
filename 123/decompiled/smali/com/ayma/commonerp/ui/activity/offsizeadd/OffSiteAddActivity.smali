.class public Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "OffSiteAddActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddContact$IOffSiteAddView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

.field btnDeleteAll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005a
    .end annotation
.end field

.field btnSelectGoods:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005b
    .end annotation
.end field

.field etCount:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005c
    .end annotation
.end field

.field etGoodsCode:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005d
    .end annotation
.end field

.field etGoodsName:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005e
    .end annotation
.end field

.field etStation:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080365
    .end annotation
.end field

.field private isSelectStation:Z

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08005f
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field private selectGoodsPopup:Landroid/widget/PopupWindow;

.field spSupplier:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08069b
    .end annotation
.end field

.field private stationPopup:Landroid/widget/PopupWindow;

.field private supplierAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supplierName:Ljava/lang/String;

.field private supplierPosition:I

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080061
    .end annotation
.end field

.field tvAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080062
    .end annotation
.end field

.field tvStoreHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080787
    .end annotation
.end field

.field tvTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080068
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080069
    .end annotation
.end field

.field tvTypeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080799
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->isSelectStation:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->isSelectStation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic lambda$init$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$init$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$init$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onBtnCommitClick$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 528
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 504
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0023

    return v0
.end method

.method public getSupplierName()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u63d0\u4ea4"

    .line 138
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsCode:Lcom/ayma/base/widget/ClearEditText;

    sget-object v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$_WJnJf3PZ6MzJwVDx3oKSViPiKE;->INSTANCE:Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$_WJnJf3PZ6MzJwVDx3oKSViPiKE;

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etCount:Lcom/ayma/base/widget/ClearEditText;

    sget-object v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$hS3Wryq7i7JA6zwHeGCsQvLMuHQ;->INSTANCE:Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$hS3Wryq7i7JA6zwHeGCsQvLMuHQ;

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etGoodsName:Lcom/ayma/base/widget/ClearEditText;

    sget-object v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$Q4ogWD9E_nYmW7jwdbWli82sctQ;->INSTANCE:Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$Q4ogWD9E_nYmW7jwdbWli82sctQ;

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;
    .locals 2

    .line 621
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    .line 272
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 273
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 274
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public initSupplier(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierAdapter:Landroid/widget/ArrayAdapter;

    .line 364
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 365
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public synthetic lambda$onBtnCommitClick$6$OffSiteAddActivity(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 530
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->commitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showSelectPopup$3$OffSiteAddActivity(Landroid/view/View;)V
    .locals 0

    .line 347
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectPopup$4$OffSiteAddActivity(Landroid/view/View;)V
    .locals 0

    .line 348
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyListDataChange()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyTypeChange()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 472
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->hideInfoDetailPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v5, 0x0

    .line 484
    new-instance v7, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$6;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u6709\u672a\u63d0\u4ea4\u7684\u6570\u636e\uff0c\u662f\u5426\u8981\u9000\u51fa\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u9000\u51fa"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 496
    :cond_3
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnCommitClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 514
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->hideSoftKeyboard()V

    .line 518
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 519
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8bf7\u8f93\u5165\u8865\u8d27\u8f66\u7ad9"

    .line 523
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_2
    sget-object v4, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$iwKNjhgh34PBND244XoXqJaYT3I;->INSTANCE:Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$iwKNjhgh34PBND244XoXqJaYT3I;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$XbM0_-v8__XUAVRhPiGXvfaKumw;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$XbM0_-v8__XUAVRhPiGXvfaKumw;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u8981\u63d0\u4ea4\u5f53\u524d\u6570\u636e\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u63d0\u4ea4"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnDeleteAllClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08005a
        }
    .end annotation

    .line 562
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->hideSoftKeyboard()V

    .line 566
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->adapter:Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u5f53\u524d\u5217\u8868\u4e3a\u7a7a"

    .line 567
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 570
    :cond_1
    new-instance v4, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$7;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$8;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664\u5217\u8868\u6240\u6709\u6570\u636e\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnSelectGoodsClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08005b
        }
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->hideSoftKeyboard()V

    .line 548
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierName:Ljava/lang/String;

    const-string v0, "\u8bf7\u9009\u62e9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->supplierName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->openSelectGoodsPage()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u8bf7\u5148\u9009\u62e9\u4f9b\u5e94\u5546"

    .line 549
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onResume()V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080063
        }
    .end annotation

    .line 589
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080064
        }
    .end annotation

    .line 597
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080067
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080065
        }
    .end annotation

    .line 605
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 280
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 281
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f080063

    .line 210
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080064

    .line 211
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080065

    .line 212
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080067

    .line 213
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 218
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

    .line 219
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setStationEnable(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, p1}, Lcom/ayma/base/widget/ClearEditText;->setEnabled(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showCountAndTotalPrice(DLjava/lang/Double;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->tvTotalPrice:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSelectPopup(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$6M2Tq7fIKqpAdaJrxasoTsp0u2Q;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$6M2Tq7fIKqpAdaJrxasoTsp0u2Q;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080723

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$tLcw8apBm-wBIYrNiyMRAxmzQts;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$tLcw8apBm-wBIYrNiyMRAxmzQts;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080616

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 350
    new-instance v1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 351
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 352
    new-instance v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/util/List;)V

    .line 353
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 354
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 355
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 356
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showStationList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v1, 0x7f0b00fd

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 411
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v4}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {v5, v6}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    :goto_0
    const v3, 0x7f08056f

    .line 415
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 416
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v4, 0x7f0b00ad

    .line 419
    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080759

    .line 420
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 421
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v3}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 433
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 436
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->stationPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etStation:Lcom/ayma/base/widget/ClearEditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 318
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const-string v4, "add"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    :cond_0
    return-void
.end method
