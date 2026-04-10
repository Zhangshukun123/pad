.class public Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "TeamReturnActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnContact$ITeamReturnView;"
    }
.end annotation


# static fields
.field public static final KEY_PAGE_TYPE:Ljava/lang/String; = "pageType"

.field public static final PAGE_TYPE_TRAIN_GOODS_IN:Ljava/lang/String; = "goodsIn"

.field public static final PAGE_TYPE_TRAIN_RETURN_WAREHOUSE:Ljava/lang/String; = "returnWarehouse"


# instance fields
.field btnDeleteAll:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801bb
    .end annotation
.end field

.field btnGetData:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801bc
    .end annotation
.end field

.field btnSelect:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801bd
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field etTrainNo:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801bf
    .end annotation
.end field

.field private goodsDetailPopup:Landroid/widget/PopupWindow;

.field private inputCountDialog:Landroid/app/AlertDialog;

.field private inputCountDialogView:Landroid/view/View;

.field private isCanSelectDate:Z

.field private isFirstLoad:Z

.field private isSpDataStoreTypeInit:Z

.field private itemOptionPopup:Landroid/widget/PopupWindow;

.field private pageType:Ljava/lang/String;

.field rlvData:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801c0
    .end annotation
.end field

.field private selectGoodsPopup:Landroid/widget/PopupWindow;

.field spDataStore:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08006a
    .end annotation
.end field

.field spType:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08006b
    .end annotation
.end field

.field spWarehouse:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08006c
    .end annotation
.end field

.field private storeName:Ljava/lang/String;

.field private storePosition:I

.field private storeTypePosition:I

.field private teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

.field private title:Ljava/lang/String;

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801c2
    .end annotation
.end field

.field tvAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801c3
    .end annotation
.end field

.field tvGoodsDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801c9
    .end annotation
.end field

.field tvGoodsDateHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801ca
    .end annotation
.end field

.field tvGoodsTran:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801cb
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801ce
    .end annotation
.end field

.field tvOutDateHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801cf
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e8
    .end annotation
.end field

.field tvTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d0
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d1
    .end annotation
.end field

.field tvTrainDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d2
    .end annotation
.end field

.field tvTypeHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d3
    .end annotation
.end field

.field tvWarehouseHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801d4
    .end annotation
.end field

.field private typeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isCanSelectDate:Z

    .line 129
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isSpDataStoreTypeInit:Z

    .line 133
    iput-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isCanSelectDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storePosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storePosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->typeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storeTypePosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->storeTypePosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isSpDataStoreTypeInit:Z

    return p0
.end method

.method static synthetic access$602(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isSpDataStoreTypeInit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic lambda$onBackPressed$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 674
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showSelectDateDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 404
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pageType"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public commitSuccess()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 652
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    const-string v2, "returnWarehouse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public filterResult(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 636
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->notifyListChange()V

    .line 638
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 641
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSingleAlertNoAction(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0041

    return v0
.end method

.method public init()V
    .locals 2

    const-string v0, "\u63d0\u4ea4"

    .line 174
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showRightBtnText(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$1hyDaPT09T9ztGMUFJNTgbntFE8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$1hyDaPT09T9ztGMUFJNTgbntFE8;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->title:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTitle()V

    .line 197
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    const-string p1, "goodsIn"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvOutDateHint:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvWarehouseHint:Landroid/widget/TextView;

    const-string p2, "\u8865\u8d27\u4ed3\u5e93\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTypeHint:Landroid/widget/TextView;

    const-string p2, "\u8865\u8d27\u5e93\u522b\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDateHint:Landroid/widget/TextView;

    const-string p2, "\u4e0a\u8d27\u65e5\u671f\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsTran:Landroid/widget/TextView;

    const-string p2, "\u4e0a\u8d27\u8f66\u6b21\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnGetData:Landroid/widget/Button;

    const-string p2, "\u83b7\u53d6\u9500\u552e\u6570\u636e"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "returnWarehouse"

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvOutDateHint:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvWarehouseHint:Landroid/widget/TextView;

    const-string p2, "\u9000\u8d27\u4ed3\u5e93\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTypeHint:Landroid/widget/TextView;

    const-string p2, "\u9000\u8d27\u5e93\u522b\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDateHint:Landroid/widget/TextView;

    const-string p2, "\u9000\u8d27\u65e5\u671f\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsTran:Landroid/widget/TextView;

    const-string p2, "\u9000\u8d27\u8f66\u6b21\uff1a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->btnGetData:Landroid/widget/Button;

    const-string p2, "\u83b7\u53d6\u8f66\u5b58\u6570\u636e"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getGoDateNonePrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    sget-object p2, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 228
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->init()V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;
    .locals 2

    .line 190
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Landroidx/collection/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;>;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Landroidx/collection/ArrayMap;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    .line 326
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

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

    .line 233
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 234
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 235
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->typeAdapter:Landroid/widget/ArrayAdapter;

    .line 269
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 p1, 0x0

    .line 295
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->typeName:Ljava/lang/String;

    .line 297
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    invoke-direct {p2, v0, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 298
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 299
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    new-instance p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;

    invoke-direct {p3, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 315
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    const-string p3, "goodsIn"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 316
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 317
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$0$TeamReturnActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u8f66\u6b21"

    .line 178
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onBackPressed$7$TeamReturnActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 676
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 677
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showEditCount$4$TeamReturnActivity(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;Landroid/view/View;)V
    .locals 0

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V

    return-void
.end method

.method public synthetic lambda$showEditCount$5$TeamReturnActivity(Landroid/view/View;)V
    .locals 0

    .line 556
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$1$TeamReturnActivity(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 390
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 391
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 392
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$2$TeamReturnActivity(ZLandroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 397
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->filterGoodsDate(Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public notifyListChange()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->notifyDataSetChanged()V

    .line 416
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    .line 425
    iput-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    goto :goto_1

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->rlvData:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyTypeChange()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->typeAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 659
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 672
    sget-object v5, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$jn_1mgXlalw6wzhg9Ref4_JKiE0;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$jn_1mgXlalw6wzhg9Ref4_JKiE0;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$dz7_TfwRBGuNtDQ24ax0fE1iVmY;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$dz7_TfwRBGuNtDQ24ax0fE1iVmY;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u6709\u672a\u63d0\u4ea4\u7684\u6570\u636e\uff0c\u786e\u5b9a\u9000\u51fa\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u9000\u51fa"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 681
    :cond_3
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnCommitClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 694
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 698
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u8f93\u5165\u8f66\u6b21"

    .line 699
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    .line 700
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 703
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8bf7\u9009\u62e9\u65e5\u671f"

    .line 704
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 708
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 709
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, p1, v1}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "goodsIn"

    if-gez v0, :cond_4

    .line 710
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u4e0a\u8d27\u65e5\u671f\u4e0d\u80fd\u5c0f\u4e8e\u51fa\u4e58\u65e5\u671f"

    goto :goto_0

    :cond_3
    const-string p1, "\u9000\u8d27\u65e5\u671f\u4e0d\u80fd\u5c0f\u4e8e\u51fa\u4e58\u65e5\u671f"

    :goto_0
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$12;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    const-string v1, ""

    const-string v2, "\u91cd\u65b0\u9009\u62e9\u65e5\u671f"

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8bf7\u9009\u62e9"

    .line 723
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 724
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u8865\u8d27\u5e93\u522b"

    goto :goto_1

    :cond_6
    const-string p1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u9000\u8d27\u5e93\u522b"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 727
    :cond_7
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->submitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 719
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void
.end method

.method public onBtnDeleteAllClicked(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801bb
        }
    .end annotation

    .line 883
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 887
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-nez p1, :cond_1

    return-void

    .line 890
    :cond_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u65e0\u6570\u636e\u53ef\u5220\u9664"

    .line 891
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 894
    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$16;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$16;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u662f\u5426\u5220\u9664\u6240\u6709\u6570\u636e\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onBtnExitClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 686
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->finish()V

    return-void
.end method

.method public onBtnGetDataClicked(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801bc
        }
    .end annotation

    .line 801
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 804
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u8bf7\u8f93\u5165\u8f66\u6b21"

    .line 806
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 838
    :cond_2
    new-instance v5, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$14;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$14;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$15;

    invoke-direct {v7, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$15;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Landroid/text/Editable;)V

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u6b64\u64cd\u4f5c\u4f1a\u6e05\u7a7a\u5f53\u524d\u5217\u8868\uff0c\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 811
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    const-string v1, "goodsIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 813
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 814
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "\u51fa\u4e58\u65e5\u671f\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 815
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 818
    :cond_4
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spDataStore:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 824
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "\u9000\u8d27\u65e5\u671f\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    .line 825
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v1, :cond_8

    .line 828
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    .line 832
    iput-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    .line 833
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string p1, "\u5e93\u522b\u9009\u62e9\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    .line 829
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void
.end method

.method public onBtnSelectClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801bd
        }
    .end annotation

    .line 775
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 779
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spWarehouse:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    .line 780
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->spType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "\u65e5\u671f\u4e0d\u80fd\u4e3a\u7a7a"

    .line 786
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 789
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8bf7\u9009\u62e9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u5e93\u522b"

    .line 790
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->toSelectGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 782
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showTipsOnTop(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFirstLoad:Z

    .line 149
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->onCreate(Landroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801c4
        }
    .end annotation

    .line 907
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsDateClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801c9
        }
    .end annotation

    .line 735
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 739
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->pageType:Ljava/lang/String;

    const-string v0, "goodsIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 741
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->teamReturnAdapter:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v4, 0x0

    .line 742
    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$13;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$13;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    const-string v1, ""

    const-string v2, "\u91cd\u65b0\u9009\u62e9\u4e0a\u8d27\u65e5\u671f\u9700\u8981\u5c06\u5f53\u524d\u5546\u54c1\u5217\u8868\u4e2d\u8fc7\u671f\u7684\u5546\u54c1\u8fdb\u884c\u8fc7\u6ee4\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 755
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSelectDateDialog(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801c5
        }
    .end annotation

    .line 915
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801c8
        }
    .end annotation

    .line 931
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801c6
        }
    .end annotation

    .line 923
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvTrainDateClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801d2
        }
    .end annotation

    .line 760
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 763
    :cond_0
    iget-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isCanSelectDate:Z

    if-nez p1, :cond_1

    return-void

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 767
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTrainDate:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSelectDateDialog(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    .line 939
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0801c4

    .line 942
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801c5

    .line 943
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801c6

    .line 944
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801c8

    .line 945
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_1

    return-void

    .line 949
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 950
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 951
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 952
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setCanAddForOtherTrain(Z)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->etTrainNo:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvGoodsDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public showCountAndTotalPrice(DD)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->tvTotalPrice:Landroid/widget/TextView;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEditCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 10

    .line 522
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0064

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    const v2, 0x7f08072b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 526
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    const v3, 0x7f08035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    .line 528
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    const v4, 0x7f0802a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 529
    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    const v5, 0x7f0802aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 530
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 532
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "%s-\u5f53\u524d\u6570\u91cf\uff1a%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 535
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialogView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 543
    :cond_2
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$10;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V

    invoke-virtual {v2, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 553
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$zgjUwCVl_T2nYWKWXt11RwHgRoY;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$zgjUwCVl_T2nYWKWXt11RwHgRoY;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    new-instance p1, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DZ7f7xs5uh0nF98qOgaTCocduxs;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DZ7f7xs5uh0nF98qOgaTCocduxs;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 558
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 559
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    .line 560
    invoke-virtual {v2, v9}, Lcom/ayma/base/widget/ClearEditText;->setFocusable(Z)V

    .line 561
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public showGetStoreListError(Ljava/lang/String;)V
    .locals 3

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u51fa\u9519\u4e86"

    .line 448
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    const-string v1, ""

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showGoodsDetailPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 5

    .line 588
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 590
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 594
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$11;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object p1

    const v1, 0x7f08073b

    .line 601
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080737

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBarcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080744

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08073d

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCompany2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080750

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->queryGoodsType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08074b

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSupplierId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->querySupplier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080743

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080742

    .line 608
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 609
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u672a\u77e5"

    .line 611
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    :cond_1
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->getStockNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :goto_1
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f08073a

    .line 616
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080739

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBirthday()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 622
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 623
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 624
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->goodsDetailPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;II)V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 470
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$6;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080731

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080732

    .line 495
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080733

    .line 503
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$9;

    invoke-direct {v0, p0, p1, p3}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 511
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 512
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 513
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x51

    invoke-virtual {p3, p1, v0, p2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showSelectDateDialog(Landroid/widget/TextView;Z)V
    .locals 9

    .line 376
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0060

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080304

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 380
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 381
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 382
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 383
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "yyyyMMdd"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 384
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 385
    invoke-virtual {v7, v4, v5, v3}, Ljava/util/Calendar;->set(III)V

    .line 386
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->date:Ljava/lang/String;

    .line 388
    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$_qMJUbfgkljyQAxB0auWSfeJP4k;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$_qMJUbfgkljyQAxB0auWSfeJP4k;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 396
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;ZLandroid/widget/TextView;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$qII8dlr7OB2eu7opIV3N4P2AUjk;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$qII8dlr7OB2eu7opIV3N4P2AUjk;

    const-string v1, "\u53d6\u6d88"

    .line 404
    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 406
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 408
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public toSelectGoodsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 436
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->context:Landroid/content/Context;

    const-string v2, ""

    const-string v3, ""

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/ayma/commonerp/ui/activity/receiptselectgoods/ReceiptSelectGoodsActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;ILcom/ayma/base/widget/ClearEditText;)V
    .locals 5

    .line 567
    invoke-virtual {p3}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u5546\u54c1\u6570\u91cf"

    .line 569
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showToast(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p3}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const-string p1, "\u5546\u54c1\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    .line 575
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showToast(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p3}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 579
    :cond_1
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->inputCountDialog:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    .line 580
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->hideSoftKeyboard()V

    .line 581
    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setAddCount(D)V

    .line 582
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p3, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p3, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    return-void
.end method
