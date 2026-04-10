.class public Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;
.super Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;
.source "StockInEditFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInSupplierListAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;,
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditContact$IStockInEditView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

.field private billNo:Ljava/lang/String;

.field btnSave:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a1
    .end annotation
.end field

.field btnUpload:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a2
    .end annotation
.end field

.field private changeGoodsDialog:Landroid/app/AlertDialog;

.field clReceiptInfo:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a3
    .end annotation
.end field

.field private editRemarkDialog:Landroid/app/AlertDialog;

.field etGoodsCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a5
    .end annotation
.end field

.field etSupplier:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a6
    .end annotation
.end field

.field private goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field private goodsListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;

.field private isSelectGoods:Z

.field private isSelectSupplier:Z

.field private itemPosition:I

.field ivScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a7
    .end annotation
.end field

.field ivStatue:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803a8
    .end annotation
.end field

.field private orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ab
    .end annotation
.end field

.field private scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

.field private selectGoodsPopup:Landroid/widget/PopupWindow;

.field private selectInGoodsPopup:Landroid/widget/PopupWindow;

.field private selectSupplierPopup:Landroid/widget/PopupWindow;

.field spStore:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ac
    .end annotation
.end field

.field spStoreModel:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ad
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeModelAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storePosition:I

.field private storeTypeCode:Ljava/lang/String;

.field private suppierListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInSupplierListAdapter;

.field private supplierPosition:I

.field private title:Ljava/lang/String;

.field tvAllAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ae
    .end annotation
.end field

.field tvAllQty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803b0
    .end annotation
.end field

.field tvBillDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803b2
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803aa
    .end annotation
.end field

.field tvReceiptNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803ba
    .end annotation
.end field

.field tvRemark:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0803bc
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;-><init>()V

    const-string v0, "-3"

    .line 114
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->state:Ljava/lang/String;

    const-string v0, ""

    .line 115
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->billNo:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeId:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeTypeCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->supplierPosition:I

    .line 121
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->itemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectInGoodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->isSelectGoods:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->isSelectGoods:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectSupplierPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->isSelectSupplier:Z

    return p0
.end method

.method static synthetic access$302(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->isSelectSupplier:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storePosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storePosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public btnSave(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803a1
        }
    .end annotation

    .line 378
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u9009\u62e9\u4ed3\u5e93"

    .line 379
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u9009\u62e9\u5e93\u522b"

    .line 383
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8bf7\u9009\u62e9\u5355\u636e\u65e5\u671f"

    .line 387
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u8bf7\u9009\u62e9\u4f9b\u5e94\u5546"

    .line 391
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 394
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_0

    .line 398
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5
    :goto_0
    const-string p1, "\u65e0\u5546\u54c1\u6570\u636e"

    .line 395
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public btnUpload(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803a2
        }
    .end annotation

    .line 408
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u9009\u62e9\u4ed3\u5e93"

    .line 409
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u9009\u62e9\u5e93\u522b"

    .line 413
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8bf7\u9009\u62e9\u5355\u636e\u65e5\u671f"

    .line 417
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u8bf7\u9009\u62e9\u4f9b\u5e94\u5546"

    .line 421
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 424
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_0

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5
    :goto_0
    const-string p1, "\u65e0\u5546\u54c1\u6570\u636e"

    .line 425
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public clearInput()V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public commitSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 885
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object p2

    const-class v0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    const-string v1, "StockInReceipt"

    invoke-virtual {p2, v1, v0}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->generateUpdateEvent(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 887
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 889
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/ayma/base/widget/ClearEditText;->setEnabled(Z)V

    .line 890
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 891
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 892
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 893
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 894
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivScan:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 895
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 896
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 897
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 898
    new-instance p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$16;

    invoke-direct {p1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$16;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v0, "\u64a4\u9500"

    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 916
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 917
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public editRemark(Ljava/lang/String;)V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b005e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 798
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 800
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f080362

    .line 804
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0802a9

    .line 805
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0802aa

    .line 806
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 807
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 809
    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$14;

    invoke-direct {v3, p0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$14;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    new-instance p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$15;

    invoke-direct {p1, p0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$15;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 835
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 836
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method public generateUpdateEvent(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;
    .locals 2

    .line 1012
    new-instance v0, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    iget v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->itemPosition:I

    invoke-direct {v0, v1, p1}, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;-><init>(ILcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0078

    return v0
.end method

.method public hideCommitOption()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;
    .locals 2

    .line 130
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    .line 145
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->initView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;->getData()Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragmentArgs;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->itemPosition:I

    const/4 p1, 0x1

    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string p1, "\u5165\u5e93\u5355\u636e\u65b0\u589e"

    .line 153
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->billNo:Ljava/lang/String;

    .line 156
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeId:Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->state:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillDay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMdd"

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->state:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->billNo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreInId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->fetchGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->addStockReceiptHeadData(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    .line 167
    invoke-virtual {p0, v0, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showReceiptInfo(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V

    .line 169
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->fetchStoreData(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getSupplierId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->fetchSupplier(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Lcom/ayma/base/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public synthetic lambda$showChangeGoodsDialog$0$StockInEditFragment(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 4

    .line 722
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez p2, :cond_0

    .line 723
    new-instance p2, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$11;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/TextView;)V

    const-string v2, "2000-01-01 00:00"

    const-string v3, "2099-12-31 00:00"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 732
    invoke-virtual {p2, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 733
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 734
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p2, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 735
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p2, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 737
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsBirthdayPicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yyyyMMdd"

    const-string v1, "yyyy-MM-dd"

    invoke-static {p1, v0, v1}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showChangeGoodsDialog$1$StockInEditFragment(Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7

    .line 742
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 743
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostShuilv()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 745
    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBirthDay()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 748
    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$12;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$12;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u60a8\u6709\u5c1a\u672a\u4fdd\u5b58\u7684\u4fee\u6539\u6570\u636e\uff0c\u662f\u5426\u9000\u51fa\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showChangeGoodsDialog$2$StockInEditFragment(Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 7

    .line 764
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    const-string v0, "0"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 766
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    const-string p2, "\u662f\u5426\u5220\u9664\u5546\u54c1\uff1a%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$13;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$13;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;I)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    .line 765
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 775
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 778
    :cond_0
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostPrice0(D)V

    .line 779
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostShuilv(D)V

    .line 780
    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostPrice(D)V

    .line 781
    invoke-virtual {p7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setBirthDay(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setQty(I)V

    .line 783
    invoke-virtual {p0, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->notifyListChange(I)V

    .line 784
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->editItem(I)V

    .line 785
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showGoodsSelect$3$StockInEditFragment(Landroid/view/View;)V
    .locals 0

    .line 929
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showGoodsSelect$4$StockInEditFragment(Landroid/view/View;)V
    .locals 0

    .line 930
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public notifyGoodsList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)V"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    .line 495
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 496
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyDataSetChanged()V

    .line 500
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 501
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 504
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public notifyItemRemove(I)V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyItemRemoved(I)V

    .line 868
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyListChange(I)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyListInsert(I)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    if-nez v0, :cond_0

    return-void

    .line 850
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyItemInserted(I)V

    .line 851
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->adapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInEditAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->hideLoading()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "\u626b\u63cf\u5df2\u53d6\u6d88"

    .line 318
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "codedContent"

    .line 324
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p2, 0x1

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->searchGoods(Ljava/lang/String;Z)V

    return-void

    .line 330
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPress()Z
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    .line 287
    new-instance v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$6;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v3, "\u6ce8\u610f"

    const-string v4, "\u5f53\u524d\u6b63\u5728\u7f16\u8f91\u5165\u5e93\u5546\u54c1\u4fe1\u606f\uff0c\u662f\u5426\u8981\u653e\u5f03\u4fee\u6539\uff1f"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u653e\u5f03"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemarkDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 299
    new-instance v8, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$7;

    invoke-direct {v8, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$7;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v3, "\u6ce8\u610f"

    const-string v4, "\u5f53\u524d\u6b63\u5728\u7f16\u8f91\u5355\u636e\u5907\u6ce8\uff0c\u662f\u5426\u8981\u653e\u5f03\u4fee\u6539\uff1f"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u653e\u5f03"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v1

    .line 310
    :cond_1
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onBackPress()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->registerScanReceiver()V

    .line 270
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 280
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onDestroy()V

    .line 281
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->unregisterScanReceiver()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/ayma/commonerp/ui/stock/fragment/StockBaseFragment;->onDestroyView()V

    return-void
.end method

.method public onIvScanClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803a7
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 338
    :cond_0
    new-instance p1, Lcom/yzq/zxinglibrary/bean/ZxingConfig;

    invoke-direct {p1}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;-><init>()V

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setPlayBeep(Z)V

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setShake(Z)V

    .line 341
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 342
    invoke-virtual {p1, v0}, Lcom/yzq/zxinglibrary/bean/ZxingConfig;->setDecodeBarCode(Z)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const-class v2, Lcom/yzq/zxinglibrary/android/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zxingConfig"

    .line 344
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x3e7

    .line 345
    invoke-virtual {p0, v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onSelectDate(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803b2
        }
    .end annotation

    .line 350
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    if-nez p1, :cond_1

    .line 354
    new-instance p1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$8;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$8;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v2, "2000-01-01 00:00"

    const-string v3, "2099-12-31 00:00"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v0, 0x1

    .line 363
    invoke-virtual {p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCancelable(Z)V

    .line 364
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowPreciseTime(Z)V

    .line 365
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p1, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setScrollLoop(Z)V

    .line 366
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    invoke-virtual {p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanShowAnim(Z)V

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->orderDatePicker:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->show(Ljava/lang/String;)V

    return-void
.end method

.method public onTvRemarkClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0803bc
        }
    .end annotation

    .line 456
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->editRemark(Ljava/lang/String;)V

    return-void
.end method

.method public registerScanReceiver()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/ayma/commonerp/util/ScanUtil;

    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/ScanUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$9;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$9;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/ScanUtil;->registerScanReceiver(Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V

    return-void
.end method

.method public revokeSuccess()V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 950
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 951
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setEnabled(Z)V

    .line 952
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 954
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 956
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivScan:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 957
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 958
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnSave:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 960
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$17;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    const-string v2, "\u63d0\u4ea4"

    invoke-virtual {p0, v2, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 978
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    const v2, 0x7f0c0019

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 979
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public saveSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 3

    .line 873
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    const-string v2, "StockInReceipt"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->generateUpdateEvent(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public searchGoods(Ljava/lang/String;Z)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditPresenter;->scanAddData(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u8bf7\u5148\u9009\u62e9\u4f9b\u5e94\u5546"

    .line 539
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public showChangeGoodsDialog(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;I)V
    .locals 16

    move-object/from16 v9, p0

    .line 692
    iget-object v0, v9, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 694
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v9, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 695
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 696
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v9, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v2, 0x7f080346

    .line 700
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08033e

    .line 701
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/EditText;

    .line 702
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const v3, 0x7f08033f

    .line 703
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/EditText;

    .line 704
    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const v3, 0x7f08033d

    .line 705
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/EditText;

    .line 706
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const v3, 0x7f08033c

    .line 707
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    const v3, 0x7f080340

    .line 710
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/EditText;

    const v3, 0x7f08033a

    .line 711
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    const v3, 0x7f08033b

    .line 712
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%s - \u6570\u91cf\uff1a%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostShuilv()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getCostPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getBirthDay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->getQty()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 721
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$0VRyux678moaeSyGKrHk6mc3n_Y;

    invoke-direct {v0, v9, v12}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$0VRyux678moaeSyGKrHk6mc3n_Y;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/TextView;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    new-instance v7, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v5, v10

    move-object v6, v12

    move-object v9, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$WSOTCXpiXA1meuO_n4lEAIQ5EGQ;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v14, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    new-instance v9, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;

    move-object v0, v9

    move-object v2, v13

    move/from16 v4, p2

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$ZE79O02NFsNoWLUrKHyfdBC0Q-Q;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Landroid/widget/EditText;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v15, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    .line 787
    iget-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    iget-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 789
    iget-object v1, v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->changeGoodsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method public showGoodsListDialog(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectInGoodsPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 998
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v3, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectInGoodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f08062e

    .line 1002
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1003
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->goodsListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInGoodsListAdapter;

    .line 1004
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1005
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1006
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectInGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1007
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectInGoodsPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showGoodsSelect(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;",
            ">;)V"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 925
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 929
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$5nYKpkDuD0cKK3ucRy4rM6ZofNM;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$5nYKpkDuD0cKK3ucRy4rM6ZofNM;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080723

    .line 930
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$iZSLNOp8FjyKWibgol5qJYvzTRo;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/-$$Lambda$StockInEditFragment$iZSLNOp8FjyKWibgol5qJYvzTRo;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080616

    .line 931
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 932
    new-instance v1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 933
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 934
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$SelectGoodsAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/util/List;)V

    .line 935
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 936
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 937
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const v0, 0x7f1102ea

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 938
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 939
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectGoodsPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showQtyAndAmount(DD)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllQty:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvAllAmount:Landroid/widget/TextView;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showReceiptInfo(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V
    .locals 6

    .line 464
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getStoreType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeTypeCode:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvBillDay:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvReceiptNo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->clReceiptInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getSupplierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostMark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5a6

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    const-string p1, "\u5165\u5e93\u5355\u636e\u7f16\u8f91"

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_3

    .line 484
    :cond_4
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    .line 485
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    const p2, 0x7f0c001b

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 478
    :cond_5
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    .line 479
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    const p2, 0x7f0c0019

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->ivStatue:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->revokeSuccess()V

    goto :goto_3

    :cond_6
    const-string v0, "\u5165\u5e93\u5355\u636e\u660e\u7ec6"

    .line 472
    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->title:Ljava/lang/String;

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->commitSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Z)V

    .line 474
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_7

    move-object p1, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getDescription()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etGoodsCode:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public showReceiptInfo(Ljava/lang/String;)V
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->tvReceiptNo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->clReceiptInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method public showStoreData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 580
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 581
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 582
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStore:Landroid/widget/Spinner;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$10;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$10;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public showStoreModelData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeModelAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->storeModelAdapter:Landroid/widget/ArrayAdapter;

    .line 567
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->spStoreModel:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public showSupplier(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectSupplierPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 661
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v3, v4}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectSupplierPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f08062e

    .line 665
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 666
    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInSupplierListAdapter;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInSupplierListAdapter;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->suppierListAdapter:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment$StockInSupplierListAdapter;

    .line 667
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 668
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 669
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectSupplierPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 670
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->selectSupplierPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->etSupplier:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public unregisterScanReceiver()V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->scanUtil:Lcom/ayma/commonerp/util/ScanUtil;

    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/util/ScanUtil;->unregisterScanReceiver()V

    return-void
.end method

.method public uploadSuccess(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V
    .locals 3

    .line 878
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->revokeSuccess()V

    .line 879
    invoke-static {}, Lcom/ayma/commonerp/util/LiveDataBus;->get()Lcom/ayma/commonerp/util/LiveDataBus;

    move-result-object v0

    const-class v1, Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    const-string v2, "StockInReceipt"

    invoke-virtual {v0, v2, v1}, Lcom/ayma/commonerp/util/LiveDataBus;->with(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditFragment;->generateUpdateEvent(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)Lcom/ayma/commonerp/eventbus/StockInUpdateEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
